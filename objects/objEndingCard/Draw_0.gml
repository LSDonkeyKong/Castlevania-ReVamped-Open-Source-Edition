/// @description setup and shit
depth = -999999
draw_self()

nes_colors()

draw_set_halign(fa_center)
draw_set_font(fntMessage)

if image_index = 0
	card_string = "Achieved Ending #1!\nFinished the game."
if image_index = 1
	card_string = "Achieved Ending #2!\nBeat the game with 100% items."
if image_index = 2
	card_string = "Achieved Ending #3!\nFinished the game in 2 hours or less."
if image_index = 3
	card_string = "Achieved Ending #4!\nBeat the game with 15% items or less."

draw_text_outline(200,224-24,c_black,c_white,card_string)
draw_text_outline(200,8,c_white,c_black,"Thank you for playing!!")	
draw_text_outline(200,18,c_black,nes_yellow,"Clear Time - " + string(global.hours) + ":" + string(global.minutes) + ":" + string(global.seconds) )	
	
draw_set_halign(fa_left)