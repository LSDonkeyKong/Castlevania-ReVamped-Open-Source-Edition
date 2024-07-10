/// @description Dracula's Ghost AI
if global.timestop/2 = round(global.timestop/2)
{
	{//ai step
		if ai_step >= 12 ai_step = 0
		if ai_step = 0 AI = CHILL
		if ai_step = 1 AI = HOP
		if ai_step = 2 AI = FIRE
		if ai_step = 3 AI = CHILL
		if ai_step = 4 AI = HOP
		if ai_step = 5 AI = ICE
		if ai_step = 6 AI = CHILL
		if ai_step = 7 AI = HOP
		if ai_step = 8 AI = SLIME
		if ai_step = 9 AI = CHILL
		if ai_step = 10 AI = HOP
		if ai_step = 11 AI = ICE
	}
	
	scrPhysics()
	if abs(xspeed) < 0.1
		xspeed = 0
	
	if AI = CHILL
	{
		face_player(0)
		sprite_set(sprDraculasGhost,0)
		xspeed *= 0.75
		
		counter += 1
		image_index = 0
		
		if counter > 30 && hp > hp_phase1
			ai_lap()
			
		if counter > 15 && hp <= hp_phase1
			ai_lap()
	}
	
	if AI = HOP
	{
		counter += 1
		
		if counter < 30
		{
			sprite_set(sprDraculasGhost,0)
			image_index = 1
		}
		
		if counter = 30 && on_ground()
		{
			yspeed = -4 - random(4)
			sprite_set(sprDraculasGhostJump,1)
			landed = 0
			xspeed = image_xscale * 2
		}
		
		if on_ground() && counter > 35
		{
			sprite_set(sprDraculasGhost,0)
			image_index = 1
			landed += 1
			xspeed = 0
			if landed = 1
			{
				instance_create(x,y,objEarthquake)
				instance_create(x-2,y,objBossDraculasGhost_Thunder)
				instance_create(x+2,y,objBossDraculasGhost_Thunder)
				bitsound(sndEnemyPound)
			}
			
			if landed > 60
				ai_lap()
		}
	}
	
	if AI = FIRE
	{
		sprite_set(sprDraculasGhostShoot,1)
		
		face_player(0)
		xspeed *= 0.75
		
		counter += 1
		
		if counter > 90
		{
			image_index = 1
			if counter/5 = round(counter/5)
				instance_create(x + (image_xscale * 24),y,objBossDraculasGhost_Fire)
		}
		
		if counter > 150 && hp > hp_phase1
			ai_lap()
			
		if counter > 210 && hp <= hp_phase1
			ai_lap()
	}
	
	if AI = ICE
	{
		sprite_set(sprDraculasGhostScream,1)
		
		xspeed *= 0.75
		
		counter += 1
		
		if counter/30 = round(counter/30)
			instance_create(x - 32 + irandom(64), y - 32 + irandom(32), objBossDraculasGhost_Ice)
			
		if counter > 110 && hp > hp_phase1
			ai_lap()
			
		if counter > 170 && hp <= hp_phase1
			ai_lap()
	}
	
	if AI = SLIME
	{
		counter += 1
		
		if counter < 60
		{
			sprite_set(sprDraculasGhost,1)
		}
		
		if counter = 60 && on_ground()
		{
			face_player(0)
			yspeed = -4 - random(4)
			sprite_set(sprDraculasGhostJump,1)
			landed = 0
			xspeed = image_xscale * 1
		}
		
		if !on_ground() && counter/5 = round(counter/5)
			instance_create(x + (32*image_xscale),y,objBossDraculasGhost_Slime)
		
		if on_ground() && counter > 64
		{
			sprite_set(sprDraculasGhost,0)
			image_index = 1
			landed += 1
			xspeed = 0
			if landed = 1
			{
				instance_create(x,y,objEarthquake)
				if hp <= hp_phase1
				{
					instance_create(x-2,y,objBossDraculasGhost_Thunder)
					instance_create(x+2,y,objBossDraculasGhost_Thunder)
				}
				bitsound(sndEnemyPound)
			}
			
			if landed > 60
				ai_lap()
		}
	}
}