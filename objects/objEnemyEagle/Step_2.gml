/// @description Eagle AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	image_speed = 1 
	
	{//ai step
		if ai_step >= 4 ai_step = 0
		if ai_step = 0 AI = CHILL
		if ai_step = 1 AI = GET
		if ai_step = 2 AI = POSITION
		if ai_step = 3 AI = DROP
	}
	
	scrDefyPhysics()
	face_player(32)
	
	if abs(xspeed) < 0.1
		xspeed = 0
	if abs(yspeed) < 0.1
		yspeed = 0
		
	if AI = CHILL
	{
		sprite_set(sprEagle,1)
		xspeed *= 0.9
		yspeed *= 0.9
		
		if abs(x - parPlayer.x) < 256
			counter += 1
		
		if counter >= 30
			ai_lap()
	}
	
	if AI = GET
	{
		sprite_set(sprEagle,1)
		xspeed *= 0.9
		if yspeed > -2
			yspeed -= 0.2
			
		if in_view() = false
		{
			yspeed = 0
			xspeed = 0
			counter += 1
			scrViewData()
			y = yview - 32
			x = xview + irandom(400)
		}
			
		if counter >= 60 && instance_number(objEnemyHunchback) < 8
			ai_lap()
	}
	
	if AI = POSITION
	{
		sprite_set(sprEagleWithHunchback,1)
		scrViewData()
		
		dest_x = parPlayer.x
		dest_y = parPlayer.y - 80
		
		if x < dest_x && xspeed < 2
			xspeed += 0.1
		if x > dest_x && xspeed > -2
			xspeed -= 0.1
		if y < dest_y && yspeed < 2
			yspeed += 0.1
		if y > dest_y && yspeed > -2
			yspeed -= 0.1
			
		if abs(x - parPlayer.x) < 32 && y < parPlayer.y
			counter += 1
			
		if place_meeting(x,y,parSolid)
			y += 1	
			
		if counter >= 15 && !place_meeting(x,y,parSolid)
			ai_lap()
	}
	
	if AI = DROP
	{
		xspeed *= 0.9
		yspeed *= 0.9
		
		if xspeed = 0 && yspeed = 0
			counter += 1
			
		if counter = 45
			instance_create(x,y + 16,objEnemyHunchback)
			
		if place_meeting(x,y,parSolid)
			y += 2
			
		if counter < 45
			sprite_set(sprEagleWithHunchback,2)
		else
			sprite_set(sprEagle,1)
			
		if counter >= 75
			ai_lap()
	}
}