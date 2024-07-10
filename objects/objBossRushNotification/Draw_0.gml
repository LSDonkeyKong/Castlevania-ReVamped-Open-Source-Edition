/// @description say the thing
draw_set_font(fntMessage)
draw_set_halign(fa_center)
nes_colors()

if counter < 30 or counter > 270
	draw_text_outline(200,100,c_navy,c_black,"Excellent! 100% Bestiary Complete!")
else
	draw_text_outline(200,100,c_white,nes_yellow,"Excellent! 100% Bestiary Complete!")
	
if counter < 90 or counter > 270
	draw_text_outline(200,128,c_navy,c_black,"Boss Rush mode is now available.")
else
	draw_text_outline(200,128,c_white,c_red,"Boss Rush mode is now available.")

draw_set_halign(fa_left)