/// @description
scrViewData()
depth = -999999

draw_sprite_ext(sprBlackout,0,xview+(wview/2),yview+48,15,bar_height,0,c_white,1)

draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fntHUD)

if bar_height = 0.5
	draw_text(xview+(wview/2),yview+48,text)
	
draw_set_valign(fa_top)