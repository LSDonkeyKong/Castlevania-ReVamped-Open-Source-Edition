/// @description Red Phantom AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	image_speed = 1 //always set image_speed since timestop AND i_frames freeze it
	
	xspeed += 0.2 * image_xscale
	
	if y < goaly && yspeed < 4
		yspeed += 1
	if y > goaly && yspeed > -4
		yspeed -= 1
	
	if abs( y - abs(goaly) ) < 8
		yspeed = 0
	
	scrDefyPhysics()
}