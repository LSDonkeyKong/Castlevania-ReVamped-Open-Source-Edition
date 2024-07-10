/// @description Death AI
if global.timestop/2 = round(global.timestop/2)
{
	{//ai step
		if ai_step >= 12 ai_step = irandom(5) * 2
		if ai_step = 0 AI = CHILL
		if ai_step = 1 AI = SWOOP
		if ai_step = 2 AI = CHILL
		if ai_step = 3 AI = DASH
		if ai_step = 4 AI = CHILL
		if ai_step = 5 AI = THROW
		if ai_step = 6 AI = CHILL
		if ai_step = 7 AI = SWIRL
		if ai_step = 8 AI = CHILL
		if ai_step = 9 AI = GUILLO
		if ai_step = 10 AI = CHILL
		if ai_step = 11 AI = DOWNPOUR
	}

	scrDefyPhysics()

	if AI = CHILL
	{
		sprite_set(sprDeath,1)
		face_player(0)
		
		if counter/60 = round(counter/60)
		{
			xspeed = 0
			yspeed = 0
			dest_x = irandom(room_width)
			dest_y = irandom(64)
		}
		
		counter += 1
		
		if x < dest_x && xspeed < 2
			xspeed += 0.1
		if x > dest_x && xspeed > -2
			xspeed -= 0.1
		if y < dest_y && yspeed < 2
			yspeed += 0.1
		if y > dest_y && yspeed > -2
			yspeed -= 0.1
		
		if counter >= 180 && hp > hp_phase1
			ai_lap()
			
		if counter >= 120 && hp <= hp_phase1
			ai_lap()
	}
	
	if AI = THROW
	{
		sprite_set(sprDeathCast,1)
		face_player(0)
		xspeed *= 0.9
		yspeed *= 0.9
		
		counter += 1
		
		if counter = 1
			instance_create(x,y,objBossDeathScythe)
			
		if instance_number(objBossDeathScythe) == 0 && counter >= 60
			ai_lap()
	}
	
	if AI = DASH
	{
		sprite_set(sprDeathDash,1)
		
		can_leave = true
		
		yspeed = 0
		xspeed = 16 * image_xscale
		
		if x > 400 + 240 && image_xscale == 1
		{
			image_xscale = -1
			counter += 1
			y = parPlayer.y
		}
		
		if x < -240 && image_xscale == -1
		{
			image_xscale = 1
			counter += 1
			y = parPlayer.y
		}
		
		if x > -15 && x < 51 && image_xscale == 1
			bitsound(sndWaterSplash)
		if x > 400 -15 && x < 400 + 15 && image_xscale == -1
			bitsound(sndWaterSplash)
			
		if counter >= 5 && hp > hp_phase1 && in_view() && abs(x - 200) < 64
		{
			can_leave = false
			ai_lap()
		}
			
		if counter >= 10 && hp <= hp_phase1 && in_view() && abs(x - 200) < 64
		{
			can_leave = false
			ai_lap()
			can_leave = false
		}
	}
	
	if AI = GUILLO
	{
		sprite_set(sprDeathGuillotine,1)
		face_player(0)
		
		if counter == 0
		{
			if parPlayer.x > x
				xspeed += 0.2
			if parPlayer.x < x
				xspeed -= 0.2
			if y > 64
				yspeed = -4
			else
				yspeed = 0
				
			if abs(x - parPlayer.x) < 16
				counter += 1
		}
		
		if counter == 1
		{
			xspeed = 0
			yspeed += 0.25
			
			if y > room_height
				ai_lap()
		}
		
	}
	
	if AI = SWOOP
	{
		sprite_set(sprDeathScrape,1)
		
		if xspeed < 0
			image_xscale = -1
		if xspeed > 0
			image_xscale = 1
			
		if counter/60 = round(counter/60)
		{
			dest_x = parPlayer.x
			dest_y = parPlayer.y
		}
		
		counter += 1
		
		if x < dest_x && xspeed < 3
			xspeed += 0.2
		if x > dest_x && xspeed > -3
			xspeed -= 0.2
		if y < dest_y && yspeed < 3
			yspeed += 0.2
		if y > dest_y && yspeed > -3
			yspeed -= 0.2
		
		if counter >= 180 && hp > hp_phase1
			ai_lap()
			
		if counter >= 120 && hp <= hp_phase1
			ai_lap()
		
	}
	
	if AI = DOWNPOUR
	{
		sprite_set(sprDeathSummon,1)
		dest_x = 200
		dest_y = 64
		
		if x < dest_x && xspeed < 2
			xspeed += 0.1
		if x > dest_x && xspeed > -2
			xspeed -= 0.1
		if y < dest_y && yspeed < 2
			yspeed += 0.1
		if y > dest_y && yspeed > -2
			yspeed -= 0.1
		
		global.sickle_dir = 270
		
		counter += 1
		
		if counter = 1
		{
			bitsound(sndBossRoar4)
			safe_spot = parPlayer.x - 64 + irandom(128)
			if safe_spot < 0
				safe_spot = 0
			if safe_spot > 400
				safe_spot = 400
		}
		
		if counter/4 = round(counter/4) repeat(24)
		{
			dest_x = irandom(400)
			if abs(dest_x - safe_spot) < 48
			{
				if irandom(1) = 1
					dest_x -= 96
				else
					dest_x += 96
			}
			instance_create(dest_x,0,objBossDeathSickle)
		}
		
		safe_spot += image_xscale
		if safe_spot > 400 - 48 or safe_spot < 48
			image_xscale *= -1
		
		if counter > 240 && hp > hp_phase1
			ai_lap()
			
		if counter > 360 && hp <= hp_phase1
			ai_lap()
	}
	
	if AI = SWIRL
	{
		sprite_set(sprDeathSummon2,1)
		face_player(0)
		xspeed *= 0.9
		
		if y > 128
			yspeed -= 0.2
		if y < 128
			yspeed += 0.2
			
		if abs(y - 128) < 16
			yspeed = 0
			
		counter += 1
		
		if counter/3 = round(counter/3)
		{
			instance_create(x,y,objBossDeathSickle)
			global.sickle_dir += 9
		}
		
		if counter > 120 && hp > hp_phase1
			ai_lap()
			
		if counter > 240 && hp <= hp_phase1
			ai_lap()
	}
}