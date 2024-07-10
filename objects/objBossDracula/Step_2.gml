/// @description Dracula AI
if global.timestop/2 = round(global.timestop/2)
{
	{//ai step
		if ai_step >= 4 ai_step = 0
		if ai_step = 0 AI = VANISHED
		if ai_step = 1 AI = APPEAR
		if ai_step = 2 AI = SHOOT
		if ai_step = 3 AI = FADE
	}
	
	face_player(0)
	
	if AI = VANISHED
	{
		y = -128
		x = 33 + irandom(400 - 66)
		
		counter += 1
		
		if counter > 120 && hp > hp_phase1
			ai_lap()
			
		if counter > 60 && hp <= hp_phase1
			ai_lap()
			
		choice = irandom(5)
		if choice = 0
			fireball = RED
		if choice = 1
			fireball = ORANGE
		if choice = 2
			fireball = YELLOW
		if choice = 3
			fireball = GREEN
		if choice = 4
			fireball = BLUE
		if choice = 5
			fireball = PURPLE
	}
	
	if AI = APPEAR
	{
		mask_index = sprite_index
		sprite_set(sprDraculaAppear,1)
		
		y = room_height - 32 - 32
				
		counter += 1
		
		if counter > 60 && hp > hp_phase1
			ai_lap()
			
		if counter > 30 && hp <= hp_phase1
			ai_lap()
	}
	
	if AI = SHOOT
	{
		mask_index = sprDraculaMask
		if hp > hp_phase1
			sprite_set(sprDracula,0)
		else
			sprite_set(sprDraculaFreaky,0)
				
		if counter = 0
			image_index = 0
			
		if counter > 7
			image_index = 1
		
		if counter > 14
			image_index = 2
			
		if counter > 21
			image_index = 3
		
		counter += 1
		
		/*if hp <= hp_phase1
		{
			counter += 1
			//double his speed but make sure to hit even frames for red fireballs
			if counter/2 != round(counter/2)
				counter = round(counter/2) * 2			
		}*/
		
		if counter > 45
		{
			if fireball != PURPLE && fireball != RED && counter/2 = round(counter/2)
				instance_create(x - (image_xscale * 32),y,fireball)
			if fireball = RED && counter/2 = round(counter/2)
				instance_create(x - (image_xscale * 32),y,fireball)
			if fireball = PURPLE && counter/20 = round(counter/20)
				instance_create(x - (image_xscale * 32),y,fireball)
		}
		
		if counter > 180 && hp > hp_phase1
			ai_lap()
			
		if counter > 90 && hp <= hp_phase1
			ai_lap()
	}
	
	if AI = FADE
	{
		mask_index = sprite_index
		sprite_set(sprDraculaFade,1)
				
		counter += 1
		
		if counter = 1
			bitsound(sndBossRoar2)

		if counter > 15
			ai_lap()
	}
}