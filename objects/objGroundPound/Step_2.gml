/// @description snap to simon + properly destroy
if player_exists() = true
{
	x = parPlayer.x
	y = parPlayer.y
	if parPlayer.pounding = false or parPlayer.pound_counter > 0
		instance_destroy()
}