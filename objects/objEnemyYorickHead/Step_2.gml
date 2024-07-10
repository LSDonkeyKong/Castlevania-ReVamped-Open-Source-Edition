/// @description DUMMY AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	scrPhysics()
	
	image_speed = 0
	if on_ground() = false
		image_index = 1
	else
		image_index = 0
		
	if place_meeting(x,y,objEnemyYorick) && on_ground() = true
	{
		if in_view() = true
			bitsound(sndThudWet)
		if x > xstart
			xspeed = -random(4)
		else
			xspeed = random(4)
			
		yspeed = -1 - random(3)
	}
	
	if place_meeting(x,y+2,parSolid) && yspeed > 0.1
	{
		xspeed *= 0.9
		yspeed = -yspeed/2
		if in_view() = true
			bitsound(sndThudWet)
	}
	
	if on_ground() = true
		xspeed *= 0.9
	
	if xspeed < 0
		image_xscale = -1
	if xspeed > 0
		image_xscale = 1
		
	if x < 0 
		xspeed = 2
	if x > room_width
		xspeed = -2
}