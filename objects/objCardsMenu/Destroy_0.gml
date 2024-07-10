/// @description re-activate + delete screen sprite
if sprite_exists(screen_sprite)
	sprite_delete(screen_sprite)
	
instance_activate_all()
bitsound(sndPickupHeart)

instance_create(x,y,objFadeOutShutter)
