/// @description draw shit
depth = -9999
scrViewData()

if sprite_exists(global.screen_sprite) draw_sprite_ext(global.screen_sprite,0,xview,yview,1,1,0,c_white,1)
draw_sprite_tiled(sprSpriteShutters,3,0,0)

draw_sprite_ext(sprPauseMenu,0,xview+200,yview+112,menu_width,1,0,c_white,1)

if menu_width >= 1
{
	draw_set_halign(fa_center)
	draw_set_font(fntMessage)
	nes_colors()

	draw_text_outline(xview+200,yview+112-16,c_white,c_black,menu_string)
	draw_set_halign(fa_left)
}