/// @description Raven AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	{//ai step
		if ai_step >= 4 ai_step = 1
		if ai_step = 0 AI = PERCH
		if ai_step = 1 AI = FLY
		if ai_step = 2 AI = PREPARE
		if ai_step = 3 AI = SWOOP
	}
	
	scrDefyPhysics()
	
	if abs(xspeed) < 0.1
		xspeed = 0
	if abs(yspeed) < 0.1
		yspeed = 0
	
	if AI = PERCH
	{
		sprite_set(sprRavenPerch,1)
		face_player(0)
		
		if abs(x - parPlayer.x) < eyesight && in_view()
			counter += 1
			
		if counter > 45
			ai_lap()
	}
	
	if AI = FLY
	{
		sprite_set(sprRaven,1)
		face_player(0)
		
		counter += 1
		
		if counter = 1
		{
			dest_x = parPlayer.x - 160 + irandom(320)
			dest_y = parPlayer.y - 64
		}

		if x < dest_x && xspeed < 2
			xspeed += 0.25
		if x > dest_x && xspeed > -2
			xspeed -= 0.25
		if y < dest_y && yspeed < 2
			yspeed += 0.25
		if y > dest_y && yspeed > -2
			yspeed -= 0.25
			
		if counter > 120
			ai_lap()
	}
	
	if AI = PREPARE
	{
		sprite_set(sprRaven,2)
		xspeed *= 0.9
		yspeed *= 0.9
		
		face_player(0)
		
		if xspeed = 0 && yspeed = 0
			counter += 1
		if counter > 60
			ai_lap()
	}
	
	if AI = SWOOP
	{
		sprite_set(sprRaven,0)
		image_index = 0
		
		counter += 1
		if counter = 1
		{
			starting_y = y
			xspeed = image_xscale * 2
			yspeed = 3 + irandom(2)
		}
		
		if counter > 1
			yspeed -= 0.1
			
		if y < starting_y
			ai_lap()
	}
}