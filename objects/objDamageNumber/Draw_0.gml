/// @description draw the woooorrrds
nes_colors()
draw_set_font(fntCritical)
draw_set_halign(fa_center)
depth = -999

if round(vspeed) < 4
	draw_text_outline(round(x),round(y) + 7,c_black,nes_yellow,string(value))
else
	draw_text_outline(round(x),round(y) + 7,c_black,c_navy,string(value))