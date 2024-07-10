/// @description re-activate + delete screen sprite
if sprite_exists(screen_sprite)
	sprite_delete(screen_sprite)
	
instance_activate_all()
bitsound(sndPickupHeart)

if !global.boss_rush
{
	if selection = 1
		title_screen()
	else
		with( instance_create_depth(x,y,0,objPauseMenu) )
		{
			selection = 4
		}
}
else
{
	if selection = 1
		title_screen()
	else
		with( instance_create_depth(x,y,0,objPauseMenuBossRush) )
		{
			selection = 1
		}
}