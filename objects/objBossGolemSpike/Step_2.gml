/// @description DUMMY AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	image_speed = 1 //always set image_speed since timestop AND i_frames freeze it
	scrPhysics()
	
	if place_meeting(x,y+2,parSolid) && yspeed > 0
		repeat(4)
			instance_create(x,y,objDebris)
	
	if on_ground() = true
		xspeed = 0
}