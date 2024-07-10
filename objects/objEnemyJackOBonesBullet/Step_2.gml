/// @description Jack AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	image_speed = 1 //always set image_speed since timestop AND i_frames freeze it
	scrPhysics()
	if place_meeting(x,y+1,parSolid) && yspeed >= 0
	{
		yspeed *= -0.9
		bounce_count += 1
		if bounce_count >= 6
			instance_destroy()
		bitsound(sndThudWet)
	}
	if place_meeting(x,y-1,parSolid) && yspeed <= 0
	{
		yspeed *= -1
		bitsound(sndThudWet)
	}
	if place_meeting(x + image_xscale, y, parSolid)
	{
		image_xscale *= -1
		xspeed = image_xscale * 2
		bitsound(sndThudWet)
	}
}