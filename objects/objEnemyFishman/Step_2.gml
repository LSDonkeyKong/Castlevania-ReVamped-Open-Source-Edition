/// @description Fishman AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	{//ai step
		if ai_step >= 10 ai_step = 0
		if ai_step = 0 AI = SWIM
		if ai_step = 1 AI = EMERGE
		if ai_step = 2 AI = WANDER
		if ai_step = 3 AI = SHOOT
		if ai_step = 4 AI = WANDER
		if ai_step = 5 AI = SHOOT
		if ai_step = 6 AI = WANDER
		if ai_step = 7 AI = SHOOT
		if ai_step = 8 AI = SHOOT
		if ai_step = 9 AI = DIVE
	}
	
	scrPhysics()
	
	if xspeed > 0 && AI != SHOOT
		image_xscale = 1
	if xspeed < 0 && AI != SHOOT
		image_xscale = -1
		
	if abs(xspeed) < 0.1
		xspeed = 0
	
	if AI = SWIM
	{
		jumped = false
		sprite_set(sprFishmanHide,1)
		
		yspeed = 0
		xspeed *= 0.9
		
		if place_meeting(x,y-32,parWater)
			vspeed *= 0.9
		else
			vspeed = 1
		
		if abs(x - parPlayer.x) < 200 && in_view()
			counter += 1
		
		other_counter += 1
		
		if other_counter/60 = round(other_counter/60)
			dir = -1 + random(2)
		
		if sign(dir) = 1 && hspeed < dir
			hspeed += 0.05
			
		if sign(dir) = -1 && hspeed > dir
			hspeed -= 0.05
		
		image_xscale = sign(hspeed)
		
		if place_meeting(x + (sign(hspeed) * 8),y,parSolid)
			hspeed = 0
		
		if counter > personality && abs(x - parPlayer.x) > 48
		{
			bitsound(sndWaterSploosh)
			other_counter = 0
			hspeed = 0
			ai_lap()
		}
	}
	
	if AI = EMERGE
	{
		xspeed = 0
		yspeed = 0
		sprite_set(sprFishmanJump,1)
		//land in water (must be checked first)
		if place_meeting(x,y,parWater) && vspeed > 0 && jumped
		{
			counter = 0
			ai_step = 0
			y = ystart
		}
		//jump out of the water
		if place_meeting(x,y,parWater) && !jumped
		{
			jumped = true
			vspeed = -6
		}
				
		//slow down vspeed if you've traveled thru a solid
		//if !place_meeting(x,y,parSolid)
			vspeed *= 0.9
		//land once you've slowed down
		if abs(vspeed) < 0.1
			vspeed = 0
		if vspeed = 0 && !place_meeting(x,y,parSolid)
			ai_lap()
		if vspeed = 0 && place_meeting(x,y,parSolid)
			y += 2
		if vspeed < 0 && place_meeting(x,y,parSolid)
			y -= 2
	}
	
	if AI = WANDER
	{
		counter += 1
		if counter < 120
		{
			if on_ground() = true
				sprite_set(sprFishman,1)
			else
				sprite_set(sprFishmanJump,1)
			if parPlayer.x < x && xspeed > -0.8
				xspeed -= 0.2
			if parPlayer.x > x && xspeed < 0.8
				xspeed += 0.2
		}
		else
		{
			sprite_set(sprFishman,0)
			image_index = 0
			xspeed *= 0.9
		}
		if counter > 180
			ai_lap()
		
	}
	
	if AI = SHOOT
	{
		sprite_set(sprFishmanShoot,0)
		counter += 1
		xspeed *= 0.9
		if counter < 60
			image_index = 0
		else
			image_index = 1
			
		if counter = 61
		{
			xspeed = -(image_xscale * 3)
			with( instance_create_depth(x, y-10,0,objEnemyFishmanBullet) )
				image_xscale = other.image_xscale
		}
		
		if counter > 120
			ai_lap()
	}
	
	if AI = DIVE
	{
		sprite_set(sprFishmanJump,1)
		xspeed = 0
		
		if place_meeting(x,y,parWater)
			vspeed *= 0.9
		else
			vspeed += 0.1
		if vspeed < 0.1 && place_meeting(x,y,parWater)
			counter += 1
		if counter > 60
		{
			vspeed = 0
			ai_lap()
		}
	}
	
	if place_meeting(x,y,parWater) && ai_step > 1
	{
		counter = 0
		ai_step = 0
		hit_solid = false
	}
}