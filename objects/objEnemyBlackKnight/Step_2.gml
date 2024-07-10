/// @description The Black Knight AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	{//ai step
		if ai_step >= 4 ai_step = 0
		if ai_step = 0 AI = PATROL
		if ai_step = 1 AI = WOAH
		if ai_step = 2 AI = CHARGE
		if ai_step = 3 AI = RETREAT
	}
	
	scrPhysics()
	
	if AI =	PATROL
	{
		sprite_set(sprBlackKnight,1)
		
		if image_xscale = 1 && xspeed < walkspeed
			xspeed += 0.2
		if image_xscale = -1 && xspeed > -walkspeed
			xspeed -= 0.2
		
		if ( on_ground() = true && !place_meeting(x + (image_xscale * 4),y + 9,parSolid) ) or ( place_meeting(x+image_xscale,y,parSolid) && place_meeting(x+image_xscale,y-1,parSolid) )
		{
			image_xscale *= -1
			xspeed = 0
		}
			
		if in_view() = true && abs(x - parPlayer.x) < eyesight && abs(parPlayer.y - y) < 32
			ai_lap()
	}
	
	if AI =	WOAH
	{
		face_player(0)
		sprite_set(sprBlackKnight,2)
		xspeed = 0
		counter += 1
		if counter = 1
		{
			bitsound(sndDrip)
			yspeed = -2
		}
		
		if on_ground() = true && counter > 30
			ai_lap()
	}
	
	if AI =	CHARGE
	{
		instance_create(x + image_xscale,y,objEnemyBlackKnightSpear)
		
		sprite_set(sprBlackKnightStab,1)
		
		if image_xscale = 1 && xspeed < walkspeed * 2
			xspeed += 0.2
		if image_xscale = -1 && xspeed > -walkspeed * 2
			xspeed -= 0.2
		
		counter += 1
		
		//stop if at edge or hitting a wall
		if ( on_ground() = true && !place_meeting(x + (image_xscale * 4),y + 9,parSolid) ) or ( place_meeting(x+image_xscale,y,parSolid) && place_meeting(x+image_xscale,y-1,parSolid) )
		{
			xspeed = 0
			ai_lap()
		}
	}
	
	if AI =	RETREAT
	{
		sprite_set(sprBlackKnightStab,1)
		
		//walk in reverse
		if image_xscale = -1 && xspeed < walkspeed
			xspeed += 0.2
		if image_xscale = 1 && xspeed > -walkspeed
			xspeed -= 0.2
		
		if on_ground() = true && !place_meeting(x - (image_xscale * 4),y + 9,parSolid)
			xspeed = 0
			
		//return to patrol after 2 seconds or so
		counter += 1
		
		if counter = 1
			xspeed = 0
		
		if counter > 120
			ai_lap()
	}
	
}