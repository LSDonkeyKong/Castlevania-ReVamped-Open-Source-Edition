/// @description Phantom Bat AI
if i_frames < 4 && global.timestop/2 = round(global.timestop/2)
{
	{//ai step
		if ai_step >= 15 ai_step = 0
		if ai_step = 0 AI = CHILL
		if ai_step = 1 AI = SCOOT
		if ai_step = 2 AI = DIVE
		if ai_step = 3 AI = CHILL
		if ai_step = 4 AI = DIVE
		if ai_step = 5 AI = CHILL
		if ai_step = 6 AI = SCOOT
		if ai_step = 7 AI = SCOOT
		if ai_step = 8 AI = SPIT
		if ai_step = 9 AI = SCOOT
		if ai_step = 10 AI = SPIT
		if ai_step = 11 AI = SCOOT
		if ai_step = 12 AI = DIVE
		if ai_step = 13 AI = SPIT
		if ai_step = 14 AI = SCOOT
		
		if hp > hp_phase1 && AI = SPIT
			AI = DIVE
	}
	
	scrPhysics()
	
	if abs(xspeed) < 0.1
		xspeed = 0
	if abs(yspeed) < 0.1
		yspeed = 0
	
	if AI = CHILL
	{
		sprite_set(sprPhantomBat,1)
		xspeed *= 0.9
		yspeed *= 0.9
		
		counter += 1
		
		if counter >= 90 && in_view()
			ai_lap()
	}
	
	if AI = SCOOT
	{
		sprite_set(sprPhantomBat,1.5)
		
		counter += 1
		
		if counter = 1
		{
			move_towards_point(irandom(400),irandom(112),6)
			xspeed = hspeed
			yspeed = vspeed 
			speed = 0
		}
		
		xspeed *= 0.9
		yspeed *= 0.9
		
		if xspeed = 0 && yspeed = 0
			ai_lap()
	}
	
	if AI = DIVE
	{
		counter += 1
		
		if counter = 1
		{
			if x < room_width/2
				goalx = 48
			else
				goalx = room_width - 48
			goaly = 48
			move_towards_point(goalx,goaly,8)
			xspeed = hspeed
			yspeed = vspeed
			speed = 0
		}
		
		if counter < 120
		{
			xspeed *= 0.9
			yspeed *= 0.9	
			sprite_set(sprPhantomBat,1.75)
			if parPlayer.x < x
				image_xscale = -1
			if parPlayer.x > x
				image_xscale = 1
		}
		
		if counter = 120
			bitsound(sndWaterfall)
		
		if counter > 120
		{
			sprite_set(sprPhantomBatCharge,1)
			if image_index >= 3
			{
				image_index = 3
				xspeed = 3 * image_xscale
				yspeed = 2
				
				if place_meeting(x + image_xscale, y, parSolid)
				{
					yspeed = -2
					ai_lap()
				}
				if x < 8
				{
					yspeed = -2
					ai_lap()
				}
				if x > room_width - 8
				{
					yspeed = -2
					ai_lap()
				}
			}
		}
	}
	
	if AI = SPIT
	{
		sprite_set(sprPhantomBat,3)
		counter += 1
		
		if counter > 120 && counter/6 = round(counter/6)
			instance_create(x,y,objBossPhantomBatBullet)
		
		if counter = 1
		{
			xspeed = -0.5 + random(1)
			yspeed = -0.5 + random(1)
		}
		
		if counter > 300
			ai_lap()
	}
}