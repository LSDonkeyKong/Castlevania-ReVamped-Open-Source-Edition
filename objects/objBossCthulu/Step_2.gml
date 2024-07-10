/// @description Cthulu AI
if global.timestop/2 = round(global.timestop/2)
{
	{//ai step
		if ai_step >= 25 ai_step = ( irandom(11) * 2) + 1
		if ai_step = 0 AI = CHILL
		if ai_step = 1 AI = FLOAT
		if ai_step = 2 AI = RED
		if ai_step = 3 AI = CHILL
		if ai_step = 4 AI = ORANGE
		if ai_step = 5 AI = FLOAT
		if ai_step = 6 AI = YELLOW
		if ai_step = 7 AI = CHILL
		if ai_step = 8 AI = GREEN
		if ai_step = 9 AI = FLOAT
		if ai_step = 10 AI = BLUE
		if ai_step = 11 AI = CHILL
		if ai_step = 12 AI = PURPLE
		if ai_step = 13 AI = FLOAT
		if ai_step = 14 AI = RED
		if ai_step = 15 AI = CHILL
		if ai_step = 16 AI = ORANGE
		if ai_step = 17 AI = FLOAT
		if ai_step = 18 AI = YELLOW
		if ai_step = 19 AI = CHILL
		if ai_step = 20 AI = GREEN
		if ai_step = 21 AI = FLOAT
		if ai_step = 22 AI = BLUE
		if ai_step = 23 AI = CHILL
		if ai_step = 24 AI = PURPLE
	}
		
	scrPhysics()
	
	if abs(xspeed) < 0.1
		xspeed = 0
	if abs(yspeed) < 0.05
		yspeed = 0
		
	if place_meeting(x,y+2,parSolid) && yspeed > 0
	{
		instance_create(x,y,objEarthquake)
		bitsound(sndEnemyPound)
	}
	
	face_player(0)
		
	if AI = CHILL
	{
		sprite_set(sprCthulu,1)
		xspeed *= 0.9
		
		if on_ground() = true
			counter += 1
			
		if counter >= 60
			ai_lap()
			
		if counter >= 15 && hp <= hp_phase1
			ai_lap()
	}
	
	if AI = FLOAT
	{
		sprite_set(sprCthuluFloat,1)
		
		if y > 48
			yspeed = -2
			
		counter += 1
		
		if counter/60 = round(counter/60)
			dest_x = irandom(400)
			
		if x < dest_x && xspeed < 3
			xspeed += 0.1
			
		if x > dest_x && xspeed > -3
			xspeed -= 0.1
			
		if counter >= 180
			ai_lap()
			
		if counter >= 90 && hp <= hp_phase1
			ai_lap()
	}
	
	if AI = RED
	{
		sprite_set(sprCthuluChuckle,1)
		xspeed *= 0.9
		counter += 1
		
		if counter/4 = round(counter/4) && counter > 60
			instance_create(x,y,objBossCthulu_Red)
			
		if counter >= 150 && hp > hp_phase1
			ai_lap()
			
		if counter >= 270 
			ai_lap()
	}
	
	if AI = ORANGE
	{
		sprite_set(sprCthuluScreamC,1)
		xspeed *= 0.9
		
		
		if counter/120 = round(counter/120) && hp > hp_phase1
			instance_create(x,y,objBossCthulu_Orange)
			
		if counter/60 = round(counter/60) && hp <= hp_phase1
			instance_create(x,y,objBossCthulu_Orange)
			
		counter += 1	
			
		if counter >= 270
			ai_lap()
	}
	
	if AI = YELLOW
	{
		sprite_set(sprCthuluScreamD,1)
		xspeed *= 0.9
		
		if counter/60 = round(counter/60) && on_ground() = true
			yspeed = -3
		
		counter += 1
		
		if counter = 1
			yellow_x = 16
		if counter = 2
		repeat(15)
			{
				instance_create(yellow_x,room_height - 16,objBossCthulu_Yellow)
				yellow_x += 40
			}
		
		if counter > 180
			ai_lap()
	}
	
	if AI = GREEN
	{
		sprite_set(sprCthuluScreamB,1)
		xspeed *= 0.9
		counter += 1
		
		if counter/15 = round(counter/15) && hp > hp_phase1
			instance_create(x,y,objBossCthulu_Green)
			
		if counter/10 = round(counter/10) && hp <= hp_phase1
			instance_create(x,y,objBossCthulu_Green)

		if counter >= 180
			ai_lap()
	}
	
	if AI = BLUE
	{
		sprite_set(sprCthuluSlash,1)
		xspeed = 0
		
		counter += 1
		
		if counter = 1
		{
			image_index = 0
			slashed = false
		}
			
		if image_index >= frame_count() && !slashed
		{
			instance_create(x,y,objBossCthulu_Blue)
			slashed = true
		}
			
		if slashed
			image_index = frame_count()
			
		if counter >= 120
			ai_lap()
	}
	
	if AI = PURPLE
	{
		sprite_set(sprCthuluScreamA,1)
		xspeed *= 0.9
		counter += 1
		
		if counter/60 = round(counter/60) && on_ground() = true
			yspeed = -6
		
		if counter/15 = round(counter/15) && hp > hp_phase1
			instance_create(x,y,objBossCthulu_Purple)
			
		if counter/10 = round(counter/10) && hp <= hp_phase1
			instance_create(x,y,objBossCthulu_Purple)

		if counter >= 300
			ai_lap()
	}
}