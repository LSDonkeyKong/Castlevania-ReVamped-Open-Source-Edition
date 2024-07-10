/// @description fade (add palette swaps later)
if (! surface_exists(surfacewithmask)) {surfacewithmask = surface_create(sprite_get_width(sprite_index), sprite_get_height(sprite_index)); }

surface_set_target(surfacewithmask)

draw_sprite_ext(sprite_index,image_index,sprite_get_xoffset(sprite_index),sprite_get_yoffset(sprite_index),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
			
gpu_set_blendmode(bm_subtract)
draw_set_color(c_black)
draw_sprite(sprSpriteShutters,floor(fadeframe/5),sprite_get_xoffset(sprSpriteShutters),sprite_get_yoffset(sprSpriteShutters))
gpu_set_blendmode(bm_normal)

surface_reset_target();

draw_surface(surfacewithmask,x - sprite_get_xoffset(sprite_index),y - sprite_get_yoffset(sprite_index))
