/// @description Yorick AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	image_speed = xspeed/walkspeed //always set image_speed since timestop AND i_frames freeze it
	
	if xspeed < 0
		image_xscale = -1
	if xspeed > 0
		image_xscale = 1
	
	scrPhysics()
	
	if instance_number(special_id) > 0
	{
		if x < special_id.x && xspeed < walkspeed
			xspeed += 0.1
		if x > special_id.x && xspeed > -walkspeed
			xspeed -= 0.1
	}
	else
	{
		if x < xstart && xspeed < walkspeed * 2
			xspeed += 0.5
		if x > xstart && xspeed > -walkspeed * 2
			xspeed -= 0.5
	}
}