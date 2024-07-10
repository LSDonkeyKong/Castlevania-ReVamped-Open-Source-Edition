/// @description Glass AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	image_speed = 0
	
	{//ai step
		if ai_step = 0
			AI = BURST
		if ai_step = 1
			AI = ZOOM
		if ai_step >= 2
			AI = ZOOM
	}
		
	scrDefyPhysics()
	
	if AI = BURST
	{
		
		yspeed += yspeed_accel
		counter += 1
		if counter = 1
			image_index = irandom(3)
		xspeed *= 0.9
		if abs(xspeed) < 0.1//counter >= 15
		{
			xspeed = 0
			yspeed = 0
			ai_lap()
		}
	}
	
	if AI = ZOOM
	{
		counter += 1
		if counter = 1
			image_index = irandom(3)
		if counter = personality * 15
		{
			bitsound(sndWeaponKnife)
			move_towards_point(parPlayer.x,parPlayer.y,3)
			xspeed = hspeed 
			yspeed = vspeed
			speed = 0
		}
	}
}