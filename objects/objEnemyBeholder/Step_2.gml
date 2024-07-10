/// @description Beholder AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	{//ai step
		if ai_step >= 5 ai_step = 0
		if ai_step = 0 AI = CHILL
		if ai_step = 1 AI = LINEUP
		if ai_step = 2 AI = CHARGE
		if ai_step = 3 AI = LINEUP
		if ai_step = 4 AI = CHARGE
	}
		
	if abs(xspeed) < 0.1
		xspeed = 0
	if abs(yspeed) < 0.1
		yspeed = 0	
	
	if AI = CHILL
	{
		scrPhysics()
		//return towards start position if clipping
		face_player(0)
		if place_meeting(x,y,parSolid)
		{
			if x < xstart
				x += 1
			if x > xstart 
				x -= 1
			if y < ystart
				y += 1
			if y > ystart
				y -= 1
			yspeed = -3
		}
		yspeed_accel = 0.1
		xspeed *= 0.9
		sprite_set(sprBeholder,0)
		
		if abs(x - parPlayer.x) <= eyesight && round(yspeed) = 0 && in_view() = true
			counter += 1
			
		if counter >= 60
			ai_lap()
			
		//bounce if you're hitting the ground
		if place_meeting(x,y+2,parSolid) && yspeed > 0
			yspeed = -yspeed * 0.8
	}
	
	if AI = LINEUP
	{
		scrDefyPhysics()
		yspeed_accel = 0
		sprite_set(sprBeholder,1)
		
		xspeed *= 0.9
		face_player(0)
		
		//float to line up with player's y
		if y > parPlayer.y && yspeed > -1
			yspeed -= 0.1
		if y < parPlayer.y && yspeed < 1
			yspeed += 0.1
			
		if abs(y - parPlayer.y) < 32
			counter += 1
			
		if counter >= 60
			ai_lap()
	}
	
	if AI = CHARGE
	{
		scrDefyPhysics()
		yspeed_accel = 0
		yspeed *= 0.9
		
		counter += 1
		
		//charge where ya facing
		if abs(xspeed) < 3
			xspeed += image_xscale * 0.2
			
		//if place_meeting(x + image_xscale, y, parSolid)
		//	ai_lap()
			
		scrViewData()
		
		//stop dashing if off screen
		if x < xview
			ai_lap()
		if x > xview + wview
			ai_lap()
	}
}