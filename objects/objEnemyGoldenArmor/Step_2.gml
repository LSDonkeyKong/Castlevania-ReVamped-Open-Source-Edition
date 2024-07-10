/// @description Golden Armor AI
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
		sprite_set(sprGoldenArmor,1)
		
		if counter/20 = round(counter/20)
		{
			if parPlayer.x < x
				dest_x = parPlayer.x + safe_distance
			else
				dest_x = parPlayer.x - safe_distance
		}
			
		counter += 1
		
		if x < dest_x && xspeed < 1.5
			xspeed += 0.25
		if x > dest_x && xspeed > -1.5
			xspeed -= 0.25
			
		//stop at ledges
		if ( on_ground() = true && !place_meeting(x + (sign(xspeed) * 9),y + 12,parSolid) ) or ( place_meeting(x+sign(xspeed),y,parSolid) && place_meeting(x+sign(xspeed),y-1,parSolid) )
			xspeed = 0
			
		face_player(0)
		
		if counter > 60
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
			sprite_set(sprGoldenArmorThrow,1)
		else
			sprite_set(sprGoldenArmorThrowLow,1)
		
		xspeed *= 0.75
		face_player(0)
		
		if counter = 10
		{
			instance_create(x,y + (aim_height * 8) ,objEnemyGoldenArmorSpear)
		}
		
		if counter >= 15
			ai_lap()
	}
}