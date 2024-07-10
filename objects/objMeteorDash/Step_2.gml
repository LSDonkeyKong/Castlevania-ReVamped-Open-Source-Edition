/// @description snap to simon + properly destroy
if player_exists() = true
{
	scrControls()
	
	x = parPlayer.x
	y = parPlayer.y
	if parPlayer.dashing = false
		instance_destroy()
		
	if parPlayer.sliding
		instance_destroy()
	
	counter += 1
	if counter > 30
		image_yscale *= 0.75
	
	if image_yscale  < 0.1
		instance_destroy()
		
	//if abs(parPlayer.xspeed) <= 2.75
		//instance_destroy()

	image_xscale = parPlayer.facing

}
else
	instance_destroy()