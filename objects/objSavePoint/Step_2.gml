/// @description warpsnap!!
if global.warpsnap = true
{
	if player_exists() = true
	{
		parPlayer.x = x
		parPlayer.y = y
		parPlayer.yspeed = -5
	}
	global.warpsnap =  false
}