/// @description DUMMY AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	image_speed = 1 //always set image_speed since timestop AND i_frames freeze it
	image_angle += 22.5
	
	if image_angle = 0
		bitsound(sndWeaponBoomerang)
	face_player(0)
	scrDefyPhysics()
	
	if AI = 0
	{
		counter += 1
		if counter >= 60
		{
			counter = 0
			AI = SEEK
		}
	}
	
	if AI = SEEK
	{
		if image_xscale = 1 && xspeed < 2.5
			xspeed += 0.05
		if image_xscale = -1 && xspeed > -2.5
			xspeed -= 0.05
			
		if parPlayer.y > y && yspeed < 2.5
			yspeed += 0.05
			
		if parPlayer.y < y && yspeed > -2.5
			yspeed -= 0.05
			
		counter += 1
		if counter >= 240
			AI = RETURN
	}
	
	if AI = RETURN && instance_number(objBossDeath) > 0
	{
		move_towards_point(objBossDeath.x,objBossDeath.y,6)
		xspeed = hspeed
		yspeed = vspeed
		speed = 0
		if abs(x - objBossDeath.x) < 24 && abs(y - objBossDeath.y) < 24
			instance_destroy()
	}
	
	if instance_number(objBossDeath) == 0
		instance_destroy()
}