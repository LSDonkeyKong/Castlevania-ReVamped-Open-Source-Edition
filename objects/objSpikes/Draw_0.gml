/// @description draw correctly when stretched
if image_angle = 0
	draw_sprite_tiled_area( sprite_index,image_index,0,0,x,y,x + sprite_get_width(sprite_index) * image_xscale - 1,y + sprite_get_height(sprite_index) * image_yscale - 1 )
else
	draw_self()