/// @description clean up memory
if sprite_exists(screen_sprite)
	sprite_delete(screen_sprite)
	
instance_activate_all()

instance_create(x,y,objFadeInShutter)