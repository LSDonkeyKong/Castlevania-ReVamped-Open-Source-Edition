/// @description draw simon and record time if boss rush
draw_self()

draw_set_halign(fa_center)
draw_set_font(fntMessage)
nes_colors()

if global.boss_rush
	draw_text_outline(200,16,c_white,nes_red,record_string)

draw_set_halign(fa_left)