/// @description fade (add palette swaps later)
//if (! surface_exists(surfacewithmask)) {surfacewithmask = surface_create(sprite_get_width(sprite_index) * 5, sprite_get_height(sprite_index) * 5); }

//surface_set_target(surfacewithmask)
if instance_number(objSimon) > 0
{
	if instance_number(objGroundPound) > 0
		draw_sprite_ext(objGroundPound.sprite_index,objGroundPound.image_index,x,y,objGroundPound.image_xscale,objGroundPound.image_yscale,objGroundPound.image_angle,objGroundPound.image_blend,objGroundPound.image_alpha)

	if instance_number(objMeteorDash) > 0
		draw_sprite_ext(objMeteorDash.sprite_index,objMeteorDash.image_index,x,y,objMeteorDash.image_xscale,objMeteorDash.image_yscale,objMeteorDash.image_angle,objMeteorDash.image_blend,objMeteorDash.image_alpha)

	if instance_number(parPlayer) > 0  && instance_number(objSimon) > 0
		draw_palette_ext( palSimon,parPlayer.current_pal,x,y ) //draw_palette_ext( palSimon,parPlayer.current_pal,sprite_get_xoffset(sprite_index),sprite_get_yoffset(sprite_index) )
	else
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}	
//gpu_set_blendmode(bm_subtract)
//draw_set_color(c_black)
//draw_sprite(sprSpriteShutters,floor(fadeframe/5),sprite_get_xoffset(sprite_index),sprite_get_yoffset(sprite_index))
//gpu_set_blendmode(bm_normal)

//surface_reset_target();

//draw_surface(surfacewithmask,x - sprite_get_xoffset(sprite_index),y - sprite_get_yoffset(sprite_index))

//surface_free(surfacewithmask);