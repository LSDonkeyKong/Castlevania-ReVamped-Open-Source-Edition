/// @description re-activate + delete screen sprite
if sprite_exists(screen_sprite)
	sprite_delete(screen_sprite)
	
instance_activate_all()
bitsound(sndPickupHeart)

with( instance_create_depth(x,y,0,objPauseMenu) )
{
	selection = 1
}

