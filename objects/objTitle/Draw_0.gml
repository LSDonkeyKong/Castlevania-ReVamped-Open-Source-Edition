/// @description start or quit
draw_sprite(sprite_index,image_index,x,y)

if selection = 0
	title_text = "[[ START ]\nQUIT"
if selection = 1
	title_text = "START\n[[ QUIT ]"
if selection >= 2
{
	if selection/2 = round(selection/2)
		title_text = "\nQUIT"
	else
		title_text = "START\nQUIT"
}

nes_colors()
draw_set_halign(fa_center)
draw_set_font(fntHUD)

if image_index >= 3
	draw_text_outline(200,160,c_black,nes_red,title_text)
	
draw_set_halign(fa_left)
draw_text(8,224-12,"Open-Source Edition")