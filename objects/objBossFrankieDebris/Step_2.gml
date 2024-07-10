/// @description Debris AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	image_speed = 1 //always set image_speed since timestop AND i_frames freeze it
	scrDefyPhysics()
	if yspeed < 3
		yspeed += yspeed_accel
}