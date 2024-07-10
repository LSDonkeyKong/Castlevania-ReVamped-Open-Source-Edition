/// @description re-activate + delete screen sprite
//if sprite_exists(screen_sprite)
//	sprite_delete(screen_sprite)
	
instance_activate_all()
bitsound(sndPickupHeart)

if selection = 1
	instance_create(x,y,objQuitMenu)

if selection = 0 && sprite_exists(global.screen_sprite)
	sprite_delete(global.screen_sprite)
	