/// @description Blood AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	image_speed = 1 //always set image_speed since timestop AND i_frames freeze it
	scrDefyPhysics()
	yspeed += yspeed_accel
	
	if yspeed >= 0
		xspeed = 0
}