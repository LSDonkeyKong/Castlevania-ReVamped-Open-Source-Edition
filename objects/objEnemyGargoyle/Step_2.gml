/// @description Gargoyle AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	{//ai step
		if ai_step >= 8 ai_step = 0
		if ai_step = 0 AI = SIT
		if ai_step = 1 AI = FLY
		if ai_step = 2 AI = CORNER
		if ai_step = 3 AI = SPIT
		if ai_step = 4 AI = FLY
		if ai_step = 5 AI = CORNER
		if ai_step = 6 AI = SPIT
		if ai_step = 7 AI = RETURN
	}
		
	if abs(xspeed) < 0.1
		xspeed = 0
	if abs(yspeed) < 0.1
		yspeed = 0

	face_player(0)

	if AI = SIT
	{
		scrPhysics()
		xspeed *= 0.9
		sprite_set(sprGargoyleSit,1)
		
		if abs(parPlayer.x - x) < eyesight && in_view() = true
			counter += 1
			
		if counter > 90
			ai_lap()
	}
	
	if AI = FLY
	{
		scrDefyPhysics()
		sprite_set(sprGargoyle,1)
		
		//change destination every half second
		if counter/30 = round(counter/30)
		{
			scrViewData()
			dest_x = xview + irandom(wview)
			dest_y = yview + irandom(hview)
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
			
		if counter > personality
			ai_lap()
	}
	
	if AI = CORNER
	{
		scrDefyPhysics()
		sprite_set(sprGargoyle,2)
		
		//change destination every half second
		if !chosen
		{
			scrViewData()
			corner = irandom(3)
			if corner = 0
				{dest_x = xview + 64 dest_y = yview + 64}
			if corner = 1
				{dest_x = xview + wview - 64 dest_y = yview + 64}
			if corner = 2
				{dest_x = xview + 64 dest_y = yview + hview - 64}
			if corner = 3
				{dest_x = xview + wview - 64 dest_y = yview + hview - 64}
			chosen = true
		}
			
		if x < dest_x && xspeed < 2
			xspeed += 0.1
		if x > dest_x && xspeed > -2
			xspeed -= 0.1
		if y < dest_y && yspeed < 2
			yspeed += 0.1
		if y > dest_y && yspeed > -2
			yspeed -= 0.1
			
		if abs( x - dest_x ) < 16 && abs( y - dest_y ) < 16
			counter += 1
			
		if counter > 60
		{
			chosen = false
			ai_lap()
		}
	}
	
	if AI = SPIT
	{	
		scrDefyPhysics()
		xspeed *= 0.9
		yspeed *= 0.9
		sprite_set(sprGargoyleShoot,1)
		if image_index > 0
			image_index = 1
			
		counter += 1
		
		if counter > 15 && counter/15 = round(counter/15)
			instance_create(x,y-8,objEnemyGargoyleBullet)
		if counter >= 120
			ai_lap()
	}
	
	if AI = RETURN
	{
		scrDefyPhysics()
		sprite_set(sprGargoyle,1)
		
		//change destination every half second
		dest_x = xstart
		dest_y = ystart
		
		if x < dest_x && xspeed < 2
			xspeed += 0.1
		if x > dest_x && xspeed > -2
			xspeed -= 0.1
		if y < dest_y && yspeed < 2
			yspeed += 0.1
		if y > dest_y && yspeed > -2
			yspeed -= 0.1
			
		if abs( x - dest_x ) < 16 && abs( y - dest_y ) < 16 && !place_meeting(x,y,parSolid)
		{
			yspeed = -4
			ai_lap()
		}
	}
}