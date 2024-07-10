/// @description draw le menu
scrViewData()

if sprite_exists(global.screen_sprite) draw_sprite_ext(global.screen_sprite,0,xview,yview,1,1,0,c_white,1)
draw_sprite_tiled(sprSpriteShutters,4,xview,yview)

depth = -999999

draw_set_font(fntMessage)

nes_colors()

draw_set_halign(fa_center)

draw_text_outline(xview+200,yview+8,c_white,nes_yellow,"INVENTORY")

draw_text_outline(xview + 200,yview+224 - 10,c_black,nes_red,completion_string)

draw_set_color(nes_yellow)
draw_text_scribble_ext(xview+200,yview+160,description_string,320)

draw_set_halign(fa_left)

draw_text_outline(xview + 8, yview + 64, c_black, c_white,whips_string)

draw_text_outline(xview + 120 + 8, yview + 64, c_black, c_white,abilities_string)

draw_text_outline(xview + 232 + 16, yview + 64, c_black, c_white,boots_string)

if selection <= 3
	draw_sprite(sprSelector,0,xview,yview + 80 + ( selection * 8 ) )
	
if selection <= 7 && selection > 3
	draw_sprite(sprSelector,0,xview + 112 + 8,yview + 80 + ( (selection-4) * 8 ) )

if selection > 7
	draw_sprite(sprSelector,0,xview + 224 + 16,yview + 80 + ( (selection-8) * 8 ) )
	

