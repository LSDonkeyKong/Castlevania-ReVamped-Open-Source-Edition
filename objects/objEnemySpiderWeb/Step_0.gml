/// @description stick to player
if speed = 0 && player_exists() = true
{
	x = parPlayer.x - 8 + stick_x
	y = parPlayer.y - 8 + stick_y
	
	scrControls()
	
	if kLeftTap && irandom(12) = 7
		instance_destroy()
		
	if kRightTap && irandom(12) = 7
		instance_destroy()
		
	if kJump && irandom(12) = 7
		instance_destroy()
}

depth = -1