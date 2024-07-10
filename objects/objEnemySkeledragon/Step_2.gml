/// @description Skeledragon AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	image_speed = 0
	if AI = SPIT
		image_index = 1
	else
		image_index = 0
	
	{//ai step
		if ai_step >= 8 ai_step = 1
		if ai_step = 0 AI = EMERGE
		if ai_step = 1 AI = CHILL
		if ai_step = 2 AI = AIM
		if ai_step = 3 AI = SPIT
		if ai_step = 4 AI = CHILL
		if ai_step = 5 AI = AIM
		if ai_step = 6 AI = SPIT
		if ai_step = 7 AI = SPIT
	}
	
	scrDefyPhysics()
	
	if AI = EMERGE && in_view() = true
	{
		//spawn a segment every 8 counts
		if counter/8 = round(counter/8)
			with( instance_create_depth(x,y,0,objEnemySkeledragonSegment) )
			{
				special_id = other.id
				segment = other.segment_count * 1
				other.segment_count -= 1
				image_xscale = other.image_xscale
			}
		
		counter += 1
		
		//stop this when you are about 6 blocks long
		if abs(x - xstart) < 96
			x += image_xscale
		else
		{
			x += image_xscale * 12
			ai_lap()
		}
	}
	
	if AI = CHILL
	{
		//set a random goalx nearby
		if counter/15 = round(counter/15)
		{
			goalx = xstart - 4 + irandom(8)
			goaly = ystart - 16 + irandom(32)
		}
		
		//if x < goalx
		//	xspeed += 0.01
		//if x > goalx
		//	xspeed -= 0.01
		if y < goaly
			yspeed += 0.1
		if y > goaly
			yspeed -= 0.1
		
		counter += 1
		
		if counter > 180
			ai_lap()
	}
	
	if AI = AIM 
	{
		if counter/2 = round(counter/2)
			x += 1
		else
			x = xstart + image_xscale * (96 + 12)
			
		counter += 1
		
		xspeed *= 0.9
		yspeed *= 0.9
		
		if abs(xspeed) < 0.1 && abs(yspeed) < 0.1 && counter > 60
		{
			xspeed = 0
			yspeed = 0
			ai_lap()
		}		
	}
	
	if AI = SPIT
	{
		counter += 1
		
		xspeed *= 0.9
		yspeed *= 0.9
		
		if counter > 30 && counter/4 = round(counter/4)
			with( instance_create_depth(x,y,0,objEnemySkeledragonBullet) )
			{
				xspeed = other.image_xscale * 3
				yspeed = 0.8 * cos(other.counter/4)
			}
			
		if counter > 240
			ai_lap()
	}
}