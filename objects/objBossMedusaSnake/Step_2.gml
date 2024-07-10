/// @description DUMMY AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	{//ai step
		if ai_step >= 2 ai_step = 0
		if ai_step = 0 AI = HOPIN
		if ai_step = 1 AI = SLITHER
	}
	
	scrPhysics()
	
	if AI = HOPIN
	{
		image_speed = 0
		if place_meeting(x,y,parSolid)
			y += -5
		else
		{
			bitsound(sndLaurel)
			ai_lap()
		}
		yspeed = -3
		face_player(0)
	}
	
	if AI = SLITHER
	{
		image_speed = 1
		
		if image_xscale = 1 && xspeed < walkspeed && on_ground() = true
			xspeed += 0.2
		if image_xscale = -1 && xspeed > -walkspeed && on_ground() = true
			xspeed -= 0.2
		
		if ( on_ground() = true && !place_meeting(x + (image_xscale * 4),y + 9,parSolid) ) or ( place_meeting(x+image_xscale,y,parSolid) && place_meeting(x+image_xscale,y-1,parSolid) )
		{
			image_xscale *= -1
			xspeed = 0
		}
	}
}