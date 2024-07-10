/// @description DUMMY AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	image_speed = 1 //always set image_speed since timestop AND i_frames freeze it
	
	counter += 1
	
	scrDefyPhysics()
	
	if counter < 60
	{
		move_towards_point(parPlayer.x,parPlayer.y,1)
		image_angle = round(direction/8) * 8
		speed = 0
	}
	
	if counter = 60
	{
		bitsound(sndWeaponKnife)
		move_towards_point(parPlayer.x,parPlayer.y,4)
		xspeed = hspeed
		yspeed = vspeed
		speed = 0
	}
}