/// @description respawn pause menu
if sprite_exists(screen_sprite)
	sprite_delete(screen_sprite)
	
bitsound(sndPickupHeart)

with( instance_create_depth(x,y,0,objPauseMenu) )
{
	selection = 2
}

