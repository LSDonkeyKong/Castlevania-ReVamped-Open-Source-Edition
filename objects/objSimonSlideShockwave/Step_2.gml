/// @description snap to simon + properly destroy
if player_exists() = true
{
	x = parPlayer.x
	y = parPlayer.y
	image_xscale = parPlayer.facing
	if !parPlayer.sliding
		instance_destroy()
}
