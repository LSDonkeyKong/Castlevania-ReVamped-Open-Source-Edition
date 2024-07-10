/// @description HUD!
scrViewData()
depth = -9999
HUD_x = 2
HUD_y = 2
if ds_map_find_value(global.savedata,"spiciness") == 0
	draw_sprite(sprHUDBase,global.hp_max-4,xview + HUD_x,yview + HUD_y)
if ds_map_find_value(global.savedata,"spiciness") == 1
	draw_sprite(sprHUDBase_1,global.hp_max-4,xview + HUD_x,yview + HUD_y)
if ds_map_find_value(global.savedata,"spiciness") == 2
	draw_sprite(sprHUDBase_2,global.hp_max-4,xview + HUD_x,yview + HUD_y)
draw_sprite(sprHealthbar,global.hp,xview + HUD_x + 40,yview + HUD_y + 9)
draw_sprite(sprHUDSubweapons,global.current_subweapon,xview + HUD_x,yview + HUD_y)
draw_sprite(sprHUDWhip,global.current_whip,xview + wview - HUD_x - 24,yview + HUD_y)

heart_text = string(global.hearts) + "/" + string(global.hearts_max)
money_text = "$ " + string(global.gold)
draw_set_font(fntHUD)
draw_set_halign(fa_left)
draw_text_outline(xview + HUD_x + 42,yview + HUD_y + 17,c_black,c_white,heart_text)
draw_text_outline(xview + HUD_x + 32 ,yview + HUD_y + 25,c_black,c_white,money_text)

nes_colors()

//debug text
if round(fps) < 60 && debug_mode
	draw_text_outline( xview + wview - 32,yview + hview - 8,c_black,nes_red,round(fps) )

if global.mx = 0 && global.my = 0 && debug_mode
	draw_text_outline(xview + 8,yview + hview - 8,c_black,nes_red,"Map coordinates not set")
	
//boss rush timer
if global.boss_rush
{
	if global.hours < 10
		hourtext = "0" + string(global.hours) + ":"
	else
		hourtext = string(global.hours) + ":"
	if global.minutes < 10
		minutetext = "0" + string(global.minutes) + ":"
	else
		minutetext = string(global.minutes) + ":"
	if global.seconds < 10
		secondtext = "0" + string(global.seconds)
	else
		secondtext = string(global.seconds)
		
	timetext = string(hourtext) + string(minutetext) + string(secondtext)
	
	draw_set_halign(fa_center)
	draw_set_font(fntMessage)
	draw_text_outline(xview + 200,yview + 16,nes_blue,c_white,timetext)
	draw_set_halign(fa_left)
}