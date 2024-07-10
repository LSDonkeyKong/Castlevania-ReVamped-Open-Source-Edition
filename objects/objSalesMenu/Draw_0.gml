/// @description draw le menu
scrViewData()

if sprite_exists(screen_sprite) draw_sprite_ext(screen_sprite,0,xview,yview,1/windowscale,1/windowscale,0,c_white,1) //draw_sprite_ext(screen_sprite,0,xview,yview,wview/view_wport[0],hview/view_hport,0,c_white,1)
draw_sprite_tiled(sprSpriteShutters,4,xview,yview)

depth = -999999

draw_set_font(fntMessage)

nes_colors()

if list_string != 0
{
	draw_sprite( sprSelector,0,xview + 2,yview + 24 + (selection * 9) )
	
	draw_set_halign(fa_center)
	draw_text_outline(xview + (wview/2),yview + 8,c_white,nes_red,"-Enchanted Trader-")
	
	draw_set_halign(fa_left)
	draw_text_outline(xview + 12,yview + 24,c_black,c_white,list_string)
	draw_set_halign(fa_center)
	draw_text_outline(xview + 32 + (wview/2) - 16,yview + 24,c_black,nes_yellow,list_status)
	draw_set_halign(fa_left)
	draw_set_color(c_white)
	draw_text_ext(xview + 400 - 160 + 24,yview + 96,description_string,9,160 - 24)
	
	if selection > 0
		draw_sprite(sprCards,selection - 1,xview + 400 - 96,yview + 24)
}