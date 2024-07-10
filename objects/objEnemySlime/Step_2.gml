/// @description Slime AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	image_speed = 0
	scrPhysics()
	{//ai step
		if ai_step >= 2 ai_step = 0
		if ai_step = 0 AI = CHILL
		if ai_step = 1 AI = HOP
	}
		
	if abs(xspeed) < 0.1
		xspeed = 0
			
	if yspeed < 0 
		image_index = 2
	if yspeed >= 0
		image_index = 1
	if on_ground() = true
		image_index = 0
		
	if AI = CHILL
	{
		counter += 1
		//stop moving horizontally
		xspeed *= 0.75
			
		if place_meeting(x,y + image_yscale,parSolid) && in_view() = true && counter > 30
			ai_lap()
	}
		
	if AI = HOP
	{
		counter += 1
		if place_meeting(x,y + image_yscale,parSolid) && in_view() = true && counter = 1
		{
			yspeed = -image_yscale * ( 3 + irandom(5) )
			bitsound(sndDrip)
			xspeed = -2.5 + random(5)
		}
		if counter > 15 && place_meeting(x,y + image_yscale,parSolid)
			ai_lap()
	}
}