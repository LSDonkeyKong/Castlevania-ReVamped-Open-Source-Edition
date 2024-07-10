/// @description DUMMY AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	image_speed = 1 //always set image_speed since timestop AND i_frames freeze it
	
	face_player(0)
	scrDefyPhysics()
	
	if image_xscale = 1 && xspeed < 3
		xspeed += 0.1
	if image_xscale = -1 && xspeed > -3
		xspeed -= 0.1
			
	if parPlayer.y > y && yspeed < 3
		yspeed += 0.1
	if parPlayer.y < y && yspeed > -3
		yspeed -= 0.1
}