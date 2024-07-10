/// @description DUMMY AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	{//ai step
		if ai_step >= 2 ai_step = 0
		if ai_step = 0 AI = RISE
		if ai_step = 1 AI = FALL
	}
	
	scrDefyPhysics()
	scrViewData()
	
	if AI = RISE
	{
		yspeed -= 0.2
		xspeed = 0
		image_yscale = -1
		if y < yview - 16
			ai_lap()
	}
	
	if AI = FALL
	{
		image_yscale = 1
		//align with player when offscreen
		if y < yview - 16
			x = parPlayer.x
			
		if yspeed < fallspeed
			yspeed += yspeed_accel
			
		counter += 1
		if counter = 65
			bitsound(sndSimonPound)
			
		if y > yview + hview + 8
			instance_destroy()
	}
}