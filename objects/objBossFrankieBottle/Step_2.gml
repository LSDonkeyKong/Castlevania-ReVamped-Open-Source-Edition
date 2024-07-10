/// @description Frankie Water AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	image_speed = 1 //always set image_speed since timestop AND i_frames freeze it
	scrPhysics()
	
	if place_meeting(x + image_xscale, y, parSolid)
		image_xscale *= -1
		
	if place_meeting(x,y+1,parSolid)
	{
		y = 224 - 16
		instance_destroy()
	}
}