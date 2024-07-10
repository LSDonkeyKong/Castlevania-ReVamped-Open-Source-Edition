/// @description draw da shit
depth = -999999
nes_colors()

draw_set_halign(fa_center)
draw_set_font(fntMessage)

draw_text_outline(200,64,c_white,c_black,"Boss Rush Clear")	
draw_text_outline( 200,74,c_black,nes_yellow,"Clear Time = " + string(record) )	

if new_record && congrats
	draw_text_outline( 200,84,nes_yellow,nes_red,"\n\n\nNEW RECORD!" )	
	
draw_set_halign(fa_left)