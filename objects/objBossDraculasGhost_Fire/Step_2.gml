/// @description DUMMY AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	image_speed = 1 //always set image_speed since timestop AND i_frames freeze it
	scrPhysics()
	
	if place_meeting(x,y+2,parSolid) && yspeed > 0
		yspeed *= -0.5
	if on_ground() && round(yspeed) = 0
		instance_destroy()
		
	if x >= room_width && xspeed > 0
		xspeed *= -1
		
	if x <= 0 && xspeed < 0
		xspeed *= -1
}