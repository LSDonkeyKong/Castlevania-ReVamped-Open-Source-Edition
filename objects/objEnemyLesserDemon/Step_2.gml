/// @description Lesser Demon AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	scrPhysics()
	
	if abs(xspeed) < 0.1
		xspeed = 0
	
	
	{//ai step
		if ai_step >= 4 ai_step = 0
		if ai_step = 0 AI = PATROL
		if ai_step = 1 AI = FLY
		if ai_step = 2 AI = LAND
		if ai_step = 3 AI = SHOOT
	}
		
	if AI = PATROL
	{
		yspeed_accel = 0.1
		sprite_set(sprLesserDemon,1)
		
		if image_xscale = 1 && xspeed < walkspeed
			xspeed += 0.2
		if image_xscale = -1 && xspeed > -walkspeed
			xspeed -= 0.2
		
		if ( on_ground() = true && !place_meeting(x + (image_xscale * 4),y + 9,parSolid) ) or ( place_meeting(x+image_xscale,y,parSolid) && place_meeting(x+image_xscale,y-1,parSolid) )
		{
			image_xscale *= -1
			xspeed = 0
		}
			
		if in_view() = true && abs(x - parPlayer.x) < eyesight && abs(parPlayer.y - y) < 64
			counter += 1
			
		if counter > 60
		{
			xspeed = 0
			yspeed = -2
			ai_lap()
		}
	}
	
	if AI = FLY
	{
		yspeed_accel = 0
		face_player(0)
		
		sprite_set(sprLesserDemonFly,1)
		
		counter += 1
		dest_x = parPlayer.x - 160 + irandom(320)
		dest_y = parPlayer.y - 96

		if x < dest_x && xspeed < 2
			xspeed += 0.25
		if x > dest_x && xspeed > -2
			xspeed -= 0.25
		if y < dest_y && yspeed < 2
			yspeed += 0.25
		if y > dest_y && yspeed > -2
			yspeed -= 0.25
	
		if counter > 240
			ai_lap()
	}
	
	if AI = LAND
	{
		xspeed *= 0.9
		yspeed_accel = 0.1
		sprite_set(sprLesserDemon,0)
		if on_ground() = true && xspeed = 0
			counter += 1
			
		if counter > 15
			ai_lap()
	}
	
	if AI = SHOOT
	{
		sprite_set(sprLesserDemonShoot,1)
		face_player(0)
		
		counter += 1
		
		if counter > 30 && counter/10 = round(counter/10)
			instance_create(x,y - 8 + irandom(16),objEnemyLesserDemonBullet)
			
		if counter > 75
			ai_lap()
	}
}