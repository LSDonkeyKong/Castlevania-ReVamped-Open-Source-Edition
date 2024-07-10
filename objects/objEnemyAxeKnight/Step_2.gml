/// @description Axe Knight AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	{//ai step
		if ai_step >= 2 ai_step = 0
		if ai_step = 0 AI = PACE
		if ai_step = 1 AI = THROW
	}
	
	scrPhysics()
	if abs(xspeed) < 0.1
		xspeed = 0
		
	if AI = PACE
	{
		sprite_set(sprAxeKnight,1)
		
		if counter/20 = round(counter/20)
		{
			if parPlayer.x < x
				dest_x = parPlayer.x + (safe_distance - (personality/2))
			else
				dest_x = parPlayer.x - (safe_distance - (personality/2))
		}
			
		counter += 1
		
		if in_view()
		{
			if x < dest_x && xspeed < 1
				xspeed += 0.25
			if x > dest_x && xspeed > -1
				xspeed -= 0.25
		}
		else
			xspeed = 0
			
		face_player(0)
		
		if counter > 120 + personality
			ai_lap()
	}
	
	if AI = THROW
	{
		counter += 1
		if counter = 1
		{
			aim_height = irandom(1)
			image_index = 0
		}
		
		if aim_height = 0
			sprite_set(sprAxeKnightThrow,1)
		else
			sprite_set(sprAxeKnightThrowLow,1)
		
		xspeed = 0
		face_player(0)
		
		if counter = 20
		{
			if abs(parPlayer.y - y) < 24
				instance_create(x,y - 8 + (aim_height * 16) ,objEnemyAxeKnightAxe)
			else
			{
				aim_height = 0
				instance_create(x,y - 8 + (aim_height * 16) ,objEnemyAxeKnightFallingAxe)
			}
		}
		
		if counter >= 40
			ai_lap()
	}
	
	//stop at ledges
	if ( on_ground() = true && !place_meeting(x + (sign(xspeed) * 9),y + 12,parSolid) ) or ( place_meeting(x+sign(xspeed),y,parSolid) && place_meeting(x+sign(xspeed),y-1,parSolid) )
		xspeed = 0
}