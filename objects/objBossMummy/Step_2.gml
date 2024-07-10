/// @description Mummy AI
if global.timestop/2 = round(global.timestop/2)
{
	{//ai step
		if ai_step >= 10 ai_step = irandom(7)
		if ai_step = 0 AI = WHIP
		if ai_step = 1 AI = PACE
		if ai_step = 2 AI = WHIP
		if ai_step = 3 AI = PACE
		if ai_step = 4 AI = BLOOD
		if ai_step = 5 AI = PACE
		if ai_step = 6 AI = WHIP
		if ai_step = 7 AI = ROAR
		if ai_step = 8 AI = DISAPPEAR
		if ai_step = 9 AI = APPEAR
	}
		
	scrPhysics()	
		
	if AI = ROAR
	{
		sprite_set(sprMummy,0)
		xspeed = 0
		counter += 1
		if counter = 1
		{
			bitsound(sndBossRoar4)
			instance_create(x,y,objEarthquake)
		}
		if counter >= 60
			ai_lap()
	}
	
	if AI = PACE
	{
		sprite_set(sprMummy,1)
		counter += 1
		if counter = 1
		{
			face_player(0)
			image_xscale *= -1
		}
		if image_xscale = 1 && xspeed < walkspeed
			xspeed += 0.1
		if image_xscale = -1 && xspeed > -walkspeed
			xspeed -= 0.1
			
		if place_meeting(x + image_xscale,y,parSolid)
			image_xscale *= -1
			
		if counter >= 120
			ai_lap()
	}
	
	if AI = WHIP
	{
		xspeed = 0
		sprite_set(sprMummyWhip,1)
		counter += 1
		if counter = 1
			image_index = 0
		if counter = 10
			bitsound(sndWaterSplash)
		if image_index >= frame_count()
			image_index = frame_count()
		if counter > 75
			ai_lap()
	}
	
	if AI = DISAPPEAR
	{
		yspeed = 0
		sprite_set(sprMummyTeleport,1)
		counter += 1
		if counter = 1
		{
			image_index = 0
			wrap_counter = 0
		}
		if counter/4 = round(counter/4) && image_index < frame_count()
			with( instance_create_depth(x,y + 24,0,objBossMummyWrap) )
				image_yscale = -1
		if image_index >= frame_count()
		{
			scrViewData()
			image_index = frame_count()
			counter += 1
			x = irandom(400)
			if x < 48
				x = 48
			if x > wview - 48
				x = wview - 48
			y = -64
			wrap_counter += 1
			if wrap_counter = 60
				ai_lap()
		}
	}
	
	if AI = APPEAR
	{
		yspeed = 0
		sprite_index = sprMummyTeleportIn
		counter += 1
		if counter = 1
		{
			wrap_counter = 0
			image_index = 0
			image_speed = 0
		}
		if counter/4 = round(counter/4) && image_speed = 0 && image_index = 0
			with( instance_create_depth(x,0,0,objBossMummyWrap) )
				image_yscale = 1
		if counter = 60
		{
			image_index = 0
			y = ystart
		}
		
		if counter >= 60
			image_speed = 1
		
		if image_index >= frame_count()
		{
			wrap_counter += 1
			image_index = frame_count()
			if wrap_counter > 60
				ai_lap()
		}
	}
	
	if AI = BLOOD
	{
		xspeed = 0
		sprite_set(sprMummyHead,0)
		counter += 1
		if counter = 1
			image_index = 0
		if counter > 30 && counter < 210
		{
			image_index = 1
			if counter/5 = round(counter/5)
				instance_create(x,y-16,objBossMummyBlood)
		}
		if counter > 210
			image_index = 0
		if counter = 240
			ai_lap()
	}
}