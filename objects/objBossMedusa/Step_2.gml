/// @description Medusa AI
if global.timestop/2 = round(global.timestop/2)
{
	{//ai_step
		if ai_step >= 15 ai_step = 0
		if ai_step = 0 AI = SLITHER
		if ai_step = 1 AI = SWIPE
		if ai_step = 2 AI = SLITHER
		if ai_step = 3 AI = JUMP
		if ai_step = 4 AI = COMMAND
		if ai_step = 5 AI = SLITHER
		if ai_step = 6 AI = JUMP
		if ai_step = 7 AI = ROCKS
		if ai_step = 8 AI = SLITHER
		if ai_step = 9 AI = JUMP
		if ai_step = 10 AI = SWIPE
		if ai_step = 11 AI = ROCKS
		if ai_step = 12 AI = SLITHER
		if ai_step = 13 AI = JUMP
		if ai_step = 14 AI = JUMP
		
		if instance_number(objRosarySpawner) > 0
			AI = JUMP
	}
	
	scrPhysics()
	
	if abs(xspeed) < 0.1
		xspeed = 0
	
	if AI = SLITHER
	{
		sprite_set(sprMedusa,1)
		face_player(0)
		
		counter += 1
		if counter/15 = round(counter/15)
			dest = irandom(400)
			
		if hp < hp_phase1
			walkspeed = 1.5
			
		if x < dest && xspeed < walkspeed && on_ground() = true
			xspeed += 0.1			
		if x > dest && xspeed > -walkspeed && on_ground() = true
			xspeed -= 0.1
			
		if counter >= 60
			ai_lap()
	}
	
	if AI = JUMP
	{
		sprite_set(sprMedusaJump,1)
		face_player(0)
		
		counter += 1
		if counter = 1
		{
			bitsound(sndLaurel)
			xspeed = -image_xscale * 3
			yspeed = -random(6)
			if hp < hp_phase1
			{
				yspeed -= 4
				xspeed *= -1
			}
		}
			
		if counter > 30 && on_ground() = true
		{
			xspeed = 0
			ai_lap()
		}
	}
	
	if AI = SWIPE
	{
		sprite_set(sprMedusaSword,1)
		counter += 1
		if counter = 1
			image_index = 0
			
		xspeed *= 0.9
			
		if counter = 40
		{
			bitsound(sndWeaponAxe)
			xspeed = image_xscale * 3
		}
		
		if image_index >= frame_count()
			image_index = frame_count()
			
		if counter > 60
		{
			xspeed = 0
			ai_lap()
		}
	}
	
	if AI = COMMAND
	{
		sprite_set(sprMedusaCommand,1)
		
		xspeed = 0.5 * image_xscale //*= 0.9
		
		counter += 1
		
		//spawn one snake or several if at half health
		if ( counter = 60 ) or ( counter > 60 && hp < hp_phase1 && counter/20 = round(counter/20) )
			instance_create(x - 16 + irandom(32),room_height,objBossMedusaSnake)
			
		if hp >= hp_phase1 && counter > 120
			ai_lap()
			
		if hp < hp_phase1 && counter > 180
			ai_lap()
	}
	
	if AI = ROCKS
	{
		sprite_set(sprMedusaEyes,1)
		
		xspeed *= 0.9
		counter += 1
		
		if counter = 1
			bitsound(sndBossRoar9)
			
		//spawn one snake or several if at half health
		if ( counter = 30 ) or ( counter > 30 && hp < hp_phase1 && counter/10 = round(counter/10) )
			instance_create(x - 16 + irandom(32),y,objBossMedusaBullet)
			
		if hp >= hp_phase1 && counter > 45
			ai_lap()
			
		if hp < hp_phase1 && counter > 150
			ai_lap()
	}
}