/// @description Granfalloon AI
if global.timestop/2 = round(global.timestop/2)
{
	{//ai_step
		if ai_step >= 12 ai_step = 0
		if ai_step = 0 AI = CHILL
		if ai_step = 1 AI = POUND
		if ai_step = 2 AI = CHILL
		if ai_step = 3 AI = SPIT
		if ai_step = 4 AI = CHILL
		if ai_step = 5 AI = POUND
		if ai_step = 6 AI = CHILL
		if ai_step = 7 AI = SPIT
		if ai_step = 8 AI = CHILL
		if ai_step = 9 AI = BOUNCE
		if ai_step = 10 AI = CHILL
		if ai_step = 11 AI = SPIT
	}
	
	scrViewData()
	
	scrPhysics()
	
	if AI = BOUNCE
		yspeed_accel = 0.2
	else
		yspeed_accel = 0
		
	if y < yview + 8
		y = yview + 8
	
	fallspeed = 8
	
	if abs(xspeed) < 0.1
		xspeed = 0
	if abs(yspeed) < 0.1
		yspeed = 0
		
	face_player(0)
		
	if AI = CHILL
	{
		sprite_set(sprGranfalloon,1)
		
		if y > yview + 32
			yspeed -= 0.1
		else
			yspeed += 0.1
		
		counter += 1
		
		if counter >= 120
			ai_lap()
			
		if counter >= 30 && hp <= hp_phase1
			ai_lap()
	}
	
	if AI = POUND
	{
		sprite_set(sprGranfalloon,2)
		
		if counter = 0
		{
			if y > yview + 16
				yspeed -= 1
			else
				yspeed += 0.25
				
			if x < parPlayer.x
				xspeed += 0.1
			if x > parPlayer.x
				xspeed -= 0.1
				
			if abs(x - parPlayer.x) < 64 && y < yview + 24
			{
				in_sight += 1
				xspeed *= 0.5
			}
				
			if in_sight >= 60
			{
				counter = 1
				in_sight = 0
			}
		}
		
		if counter = 1
		{
			xspeed = 0
			image_speed = 3
			yspeed += 0.25
			
			if on_ground() = true 
			{
				bitsound(sndEnemyPound)
				instance_create(x,y,objEarthquake)
				counter = 2
			}
		}
		
		if counter = 2
		{
			if yspeed > -2
				yspeed -= 0.1
				
			if yspeed < yview + 48
				ai_lap()
		}
	}
	
	if AI = SPIT
	{
		sprite_set(sprGranfalloonSpit,1)
		xspeed *= 0.9
		yspeed *= 0.9
		
		counter += 1
		
		if y > yview + 72
			yspeed = -1
		else
			yspeed = 0
		
		if counter > 60 && counter/15 = round(counter/15) && instance_number(objBossGranfalloonBody) < 32
			instance_create(x + (image_xscale * 32),y + 24,objBossGranfalloonBody)
			
		if counter >= 180 && hp > hp_phase1
			ai_lap()
			
		if counter >= 300 && hp <= hp_phase1
			ai_lap()
	}
	
	if AI = BOUNCE
	{
		sprite_set(sprGranfalloonRoll,1)
		
		counter += 1
		
		if counter = 1
			xspeed = -4 + random(8)
		
		if place_meeting(x + 4,y,parSolid)
		{
			bitsound(sndEnemyPound)
			instance_create(x,y,objEarthquakeShort)
			xspeed = -4
		}
		
		if place_meeting(x - 4,y,parSolid)
		{
			bitsound(sndEnemyPound)
			instance_create(x,y,objEarthquakeShort)
			xspeed = 4
		}
		
		if on_ground()
		{
			bitsound(sndEnemyPound)
			instance_create(x,y,objEarthquakeShort)
			yspeed = -6
		}
		
		if counter > 240 && hp > hp_phase1
			ai_lap()
		if counter > 360 && hp <= hp_phase1
			ai_lap()
	}
	
	if i_frames = 1 && instance_number(objBossGranfalloonBody) < 32
		instance_create(x,y,objBossGranfalloonBody)
}