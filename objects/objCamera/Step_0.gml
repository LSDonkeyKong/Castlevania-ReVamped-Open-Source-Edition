/// @description follow the player
camera_set_view_target(view_camera,parPlayer)
if player_exists()
{
	if instance_number(objFadeInShutter) > 0//parPlayer.hazard_damage
	{
		camera_set_view_speed(view_camera,6669,6669)
		alarm[0] = 5
	}
}