/// @description Dhuron AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	{//ai step
		if ai_step >= 2 ai_step = 0
		if ai_step = 0 AI = PACE
		if ai_step = 1 AI = THROW
	}
	
	if abs(xspeed) < 0.1
		xspeed = 0
		
	//stop at ledges
	if ( on_ground() = true && !place_meeting(x + (sign(xspeed) * 9),y + 12,parSolid) ) or ( place_meeting(x+sign(xspeed),y,parSolid) && place_meeting(x+sign(xspeed),y-1,parSolid) )
		xspeed = 0
		
	scrPhysics()	
		
	if AI = PACE
	{
		sprite_set(sprDhuron,1)
		
		if counter/30 = round(counter/30)
		{
			if parPlayer.x < x
				dest_x = parPlayer.x + safe_distance
			else
				dest_x = parPlayer.x - safe_distance
		}
			
		counter += 1
		
		if x < dest_x && xspeed < 1.25
			xspeed += 0.25
		if x > dest_x && xspeed > -1.25
			xspeed -= 0.25
			
		face_player(0)
		
		if counter > 120 && abs(x - parPlayer.x) < eyesight
			ai_lap()
	}
	
	if AI = THROW
	{
		counter += 1
		
		if counter = 1
		{
			image_index = 0
		}
		
		sprite_set(sprDhuronStab,1)
		
		xspeed *= 0.9
		
		if counter = 8
		{
			xspeed = image_xscale * 6
			bitsound(sndWaterfall)
		}

		if counter > 8
		{
			if object_index = objEnemyDhuron
			with( instance_create_depth(x,y,0,objEnemyDhuronSword) )
				image_xscale = other.image_xscale
		}
		
		if counter > 40
			image_index = 3
		
		if counter >= 40 && abs(xspeed) = 0
			ai_lap()
	}
}