/// @description draw it
scrViewData()
nes_colors()

depth = -9999

draw_set_halign(fa_right)
draw_set_font(fntHUD)

if fade = 0
	draw_text_outline(xview + 400 - 8,yview + 224 - 12,c_black,c_black,name_text)
if fade = 1
	draw_text_outline(xview + 400 - 8,yview + 224 - 12,c_black,c_navy,name_text)
if fade >= 2 && fade <= 8
	draw_text_outline(xview + 400 - 8,yview + 224 - 12,c_black,c_white,name_text)
if fade = 9
	draw_text_outline(xview + 400 - 8,yview + 224 - 12,c_black,c_navy,name_text)
if fade = 10
	draw_text_outline(xview + 400 - 8,yview + 224 - 12,c_black,c_black,name_text)


draw_set_halign(fa_left)