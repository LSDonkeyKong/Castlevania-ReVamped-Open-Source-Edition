/// @description Frankenstein's Monster AI
if global.timestop/2 = round(global.timestop/2)
{
	scrPhysics()
	
	{//ai step
		if ai_step >= 15 ai_step = 0
		if ai_step = 0 AI = CHILL
		if ai_step = 1 AI = PUNCH
		if ai_step = 2 AI = PACE
		if ai_step = 3 AI = CHARGE
		if ai_step = 4 AI = CHILL
		if ai_step = 5 AI = THROW
		if ai_step = 6 AI = CHARGE
		if ai_step = 7 AI = POUND
		if ai_step = 8 AI = CHILL
		if ai_step = 9 AI = CHARGE
		if ai_step = 10 AI = FLAME
		if ai_step = 11 AI = PACE
		if ai_step = 12 AI = CHARGE
		if ai_step = 13 AI = THROW
		if ai_step = 14 AI = POUND
	}
		
	if abs(xspeed) < 0.1
		xspeed = 0
		
	if AI = CHILL
	{
		sprite_set(sprFrankie,0)
		image_index = 2
		
		xspeed *= 0.75
		
		face_player(0)
		
		counter += 1
		
		if counter = 1
		{
			bitsound(sndBossRoar7)
			instance_create(x,y,objEarthquakeShort)
		}
		
		if counter >= 60
			ai_lap()
	}
	
	if AI = PACE
	{
		sprite_set(sprFrankie,abs(xspeed/walkspeed))
		
		if image_xscale = 1 && xspeed < walkspeed
			xspeed += 0.2
		if image_xscale = -1 && xspeed > -walkspeed
			xspeed -= 0.2
			
		if place_meeting(x+image_xscale,y,parSolid)
			image_xscale *= -1
			
		counter += 1
		
		if counter > 120
			ai_lap()
	}
	
	if AI = CHARGE
	{
		sprite_set(sprFrankie,2)
		
		counter += 1
		
		if counter = 1
		{
			yspeed = -1
			bitsound(sndDrip)
		}
		
		if counter < 60
		{
			xspeed *= 0.75
			face_player(0)
		}
			
		if counter > 60
			xspeed = image_xscale * 2
			
		if place_meeting(x+image_xscale,y,parSolid) && counter > 90
			ai_lap()
	}
	
	if AI = POUND
	{
		sprite_set(sprFrankieGroundPound,0)
		
		counter += 1
		
		if counter = 1
		{
			face_player(0)
			image_index = 0
			xspeed = image_xscale
			yspeed = -5
			pounded = false
		}
		
		if yspeed > 0
			image_index = 1
			
		if on_ground() = true && counter > 15 && !pounded
		{
			xspeed = 0
			image_index = 1
			instance_create(x,y,objEarthquake)
			instance_create(x,y,objBossFrankieDebrisSpawner)
			pounded = true
		}
		
		if on_ground() = true && counter > 200
			ai_lap()
	}
	
	if AI = FLAME
	{
		sprite_set(sprFrankieElbow,0)
		
		xspeed *= 0.75
		
		face_player(0)
		
		counter += 1
		
		if counter = 1
		{
			face_player(0)
			image_index = 0
		}
			
		if counter = 10
			image_index = 1
			
		if counter > 20 && counter/5 = round(counter/5)
		{
			image_index = 2
			instance_create(x + (image_xscale*32),y - 16,objBossFrankieFlame)
		}
		
		if counter > 120 && hp >= hp_phase1
			ai_lap()
			
		if counter > 240 && hp < hp_phase1
			ai_lap()
	}
	
	if AI = THROW
	{
		sprite_set(sprFrankieThrow,0)
		counter += 1
		
		face_player(0)
		xspeed *= 0.75
		
		if counter = 1
			image_index = 0
			
		if counter = 25
		{
			if x < 64
				image_xscale = 1
			if x > room_width - 64
				image_xscale = -1
			image_index = 1
			instance_create(x,y - 24,objBossFrankieBottle)
		}
		
		if counter >= 45
			ai_lap()
	}
	
	if AI = PUNCH
	{
		sprite_set(sprFrankiePunch,0)
		
		counter += 1
		
		xspeed *= 0.9
		
		if counter < 30
		{
			image_index = 0
			xspeed = 0
			face_player(0)
		}
		
		if counter = 30
		{
			bitsound(sndTimpani)
			image_index = 1
			xspeed = image_xscale * 6
		}
		
		if counter > 45 && xspeed = 0
			ai_lap()
	}
}