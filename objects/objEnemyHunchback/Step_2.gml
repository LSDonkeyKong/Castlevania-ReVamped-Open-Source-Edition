/// @description Hunchback AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	{//ai step
		if ai_step >= 6 ai_step = 0
		if ai_step = 0 AI = CHILL
		if ai_step = 1 AI = HOP
		if ai_step = 2 AI = HOP
		if ai_step = 3 AI = HOP
		if ai_step = 4 AI = HOP
		if ai_step = 5 AI = HOP
	}
		
	scrPhysics()
		
	if AI = CHILL
	{
		sprite_set(sprHunchback,1)
		xspeed = 0
		
		if abs(x - parPlayer.x) < eyesight
			counter += 1
			
		if counter > 30
			ai_lap()
	}
	
	if AI = HOP
	{
		image_speed = 0
		if on_ground() = true
			counter += 1
		if on_ground() = true && counter = 1
		{
			bitsound(sndDrip)
			image_index = 1
			face_player(0)
			yspeed = -2 - random(3)
			xspeed = -image_xscale + random(image_xscale * 4)
		}
		if on_ground() = true && counter > 1
		{
			image_index = 0
			xspeed = 0
			if counter > 20
				ai_lap()
		}
		
	}
}