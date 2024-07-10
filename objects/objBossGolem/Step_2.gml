/// @description Golem AI
if global.timestop/2 = round(global.timestop/2)
{
	scrPhysics()
	
	{//ai step
		if ai_step >= 12 ai_step = 0
		if ai_step = 0 AI = CHILL
		if ai_step = 1 AI = HOP
		if ai_step = 2 AI = CHILL
		if ai_step = 3 AI = SPIKES
		if ai_step = 4 AI = CHILL
		if ai_step = 5 AI = PUNCH
		if ai_step = 6 AI = FIREBALL
		if ai_step = 7 AI = HOP 
		if ai_step = 8 AI = SPIKES
		if ai_step = 9 AI = FIREBALL
		if ai_step = 10 AI = PUNCH
		if ai_step = 11 AI = HOP
		
		//if hp > hp_phase1 && AI = SPIKES
		//	AI = HOP
	}
	
	face_player(0)
	
	if abs(xspeed) < 0.1
		xspeed = 0
	
	if AI = CHILL
	{
		sprite_set(sprGolem,1)
		
		xspeed *= 0.9
		
		counter += 1
		
		if counter >= 60
			ai_lap()
	}
	
	if AI = HOP
	{
		sprite_set(sprGolemVomit,0)
		image_index = 1
		
		counter += 1
		
		if counter = 15
		{
			yspeed = -12
			xspeed = image_xscale * random(2)
		}
		
		if place_meeting(x,y+2,parSolid) && yspeed > 0
		{
			bitsound(sndEnemyPound)
			instance_create(x,y,objEarthquake)
		}
			
		if on_ground() = true
			xspeed *= 0.75
		
		if counter > 90 && on_ground() = true
			ai_lap()
	}
	
	if AI = FIREBALL
	{
		sprite_set(sprGolemSpit,1)
		counter += 1
		
		xspeed *= 0.9
		
		if (counter = 45) or ( hp < hp_phase1 && counter > 45 && counter/15 = round(counter/15) )
			instance_create(x + (image_xscale * 8), y -24,objBossGolemBullet)
			
		if counter > 120
			ai_lap()
	}
	
	if AI = SPIKES
	{
		sprite_set(sprGolemVomit,1)
		counter += 1
		
		if counter = 1
		{
			xspeed = -image_xscale * 2
			bitsound(sndBossRoar8)
		}
			
		xspeed *= 0.7
		
		if (counter = 60) or ( hp < hp_phase1 && counter > 60 && counter/30 = round(counter/30) )
			instance_create(x + (image_xscale * 8), y - 8,objBossGolemSpike)
			
		if counter > 180
			ai_lap()
	}
	
	if AI = PUNCH
	{
		sprite_set(sprGolemPunch,1)
		
		counter += 1
		if counter = 1
		{
			image_index = 0
			bitsound(sndWaterSplash)
		}
		
		xspeed = 0
			
		if image_index > 10
		{
			image_index = 11
			ai_lap()
		}
	}
}