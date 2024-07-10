/// @description Blood Skeleton AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	sprite_set(sprBloodSkeleton,abs(xspeed))
	
	//if image_speed = 0
	//	image_index = 0
	
	scrPhysics()
	
	if abs(xspeed) < 0.1
		xspeed = 0
		
	if xspeed < 0
		image_xscale = -1
	if xspeed > 0
		image_xscale = 1
	
	counter += 1
	
	if counter/(20 + personality) = round( counter/(20 + personality) )
	{
		if x < parPlayer.x
			xspeed = 2
		if x > parPlayer.x && xspeed > -1
			xspeed = -2
	}
	else
		xspeed *= 0.9
		
	//stop at ledges
	if ( on_ground() = true && !place_meeting(x + (sign(xspeed) * 9),y + 12,parSolid) ) or ( place_meeting(x+sign(xspeed),y,parSolid) && place_meeting(x+sign(xspeed),y-1,parSolid) )
		xspeed = 0
}