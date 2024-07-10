/// @description draw shit
nes_colors()
depth = -999

draw_sprite(sprEndingCardsSmall,0,x - 48,y - 48)
draw_sprite(sprEndingCardsSmall,0,x + 48,y - 48)
draw_sprite(sprEndingCardsSmall,0,x - 48,y + 48)
draw_sprite(sprEndingCardsSmall,0,x + 48,y + 48)

if ds_map_find_value(global.gallery,"ending0") > 0
	draw_sprite(sprEndingCardsSmall,1,x - 48,y - 48)
if ds_map_find_value(global.gallery,"ending1") > 0
	draw_sprite(sprEndingCardsSmall,2,x + 48,y - 48)
if ds_map_find_value(global.gallery,"ending2") > 0
	draw_sprite(sprEndingCardsSmall,3,x - 48,y + 48)
if ds_map_find_value(global.gallery,"ending3") > 0
	draw_sprite(sprEndingCardsSmall,4,x + 48,y + 48)
	
selector_x = 0
selector_y = 0

if selection < 2
	selector_y = -48
else
	selector_y = 48
	
if selection = 0 or selection = 2
	selector_x = -48
if selection = 1 or selection = 3
	selector_x = 48
	
draw_sprite(sprEndingCardsSelector,image_index,x + selector_x,y + selector_y)

draw_set_halign(fa_center)
draw_set_font(fntMessage)


if selection = 0
	card_string = "Ending #1\nFinish the game."
if selection = 1
	card_string = "Ending #2\nBeat the game with 100% items."
if selection = 2
	card_string = "Ending #3\nFinish the game in 2 hours or less."
if selection = 3
	card_string = "Ending #4\nBeat the game with 15% items or less."

draw_text_outline(200,224-24,c_black,nes_yellow,card_string)
	
draw_set_halign(fa_left)