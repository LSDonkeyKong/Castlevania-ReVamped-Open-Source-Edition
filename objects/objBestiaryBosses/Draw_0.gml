/// @description drawing
depth = -9999999
scrViewData()

//ON TOP OF EVERYTHING
draw_sprite_tiled(sprBlackout,0,x,y)

draw_set_font(fntMessage)
draw_set_halign(fa_left)
draw_set_color(c_white)

offset = 0
if global.boss_entry > 10
	offset = (global.boss_entry - 10) * 10

draw_text_ext(xview + 64, yview + 24 - 10 - offset,list_string,10,400)

if global.boss_entry <= 10
	selector_offset = global.boss_entry * 10
else
	selector_offset = 10 * 10

draw_sprite(sprSelector,0,xview + 64 - 10,yview+ 24 + selector_offset)

//UNDER EVERYTHING
draw_sprite(sprBestiaryList,0,xview,yview)