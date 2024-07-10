/// @description draw shit
scrViewData()
nes_colors()
depth = -999999

draw_sprite_tiled(sprBlackout,4,xview,yview)

draw_set_color(c_white)
draw_set_font(fntMessage)

draw_text_ext( xview+64,yview+136+16 - scroll,string(entry),10,384 - 128)

draw_sprite(sprBestiaryEntry,0,xview,yview)

if entry_type = ENEMY
	draw_sprite(sprBestiaryEnemies,(entry_pic*2) + image_index,xview+216,yview+24)
	
if entry_type = BOSS
	draw_sprite(sprBestiaryBosses,(entry_pic*2) + image_index,xview+216,yview+24)
	
draw_set_font(fntHUD)
draw_set_halign(fa_left)

draw_text_outline( xview+32,yview+24,c_black,c_white,string(entry_number) )

draw_text_outline( xview+16,yview+40,c_black,nes_yellow,string(entry_name) )

draw_text_outline( xview+40,yview+64,c_black,c_white,string(entry_hp) )

draw_text_outline( xview+64,yview+80,c_black,nes_red,string(entry_kills) )

