/// @description re-activate + delete screen sprite
if sprite_exists(screen_sprite)
	sprite_delete(screen_sprite)
	
instance_activate_all()
bitsound(sndPickupHeart)

if selection = 0
{
	instance_create(x,y,objBestiaryEnemies)
}

if selection = 1
{
	instance_create(x,y,objBestiaryBosses)
}

if selection = 2
	with( instance_create_depth(x,y,0,objPauseMenu) )
	{
		selection = 3
	}

