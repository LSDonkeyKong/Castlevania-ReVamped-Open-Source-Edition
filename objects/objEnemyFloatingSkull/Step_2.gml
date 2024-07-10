/// @description Floating Skull AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	image_speed = 0
	
	{//ai_step
		if ai_step >= 7 ai_step = 0
		if ai_step = 0 AI = CHILL
		if ai_step = 1 AI = FLOAT
		if ai_step = 2 AI = SPIT
		if ai_step = 3 AI = FLOAT
		if ai_step = 4 AI = SPIT
		if ai_step = 5 AI = FLOAT
		if ai_step = 6 AI = SPIT
	}
		
	scrDefyPhysics()
	scrViewData()
	
	if abs(xspeed) < 0.1
		xspeed = 0
	if abs(yspeed) < 0.1
		yspeed = 0
		
	face_player(0)	
		
	if AI = CHILL
	{
		image_index = 0
		xspeed *= 0.9
		yspeed *= 0.9
		
		if in_view() = true && abs(x - parPlayer.x) < 200
			counter += 1
		
		if in_view() = false
		{
			move_towards_point(xstart,ystart,2)
			xspeed = hspeed
			yspeed = vspeed
			speed = 0
		}
		
		if counter > 60
			ai_lap()
	}
	
	if AI = FLOAT
	{
		image_index = 0
		counter += 1
		if counter/30 = round(counter/30)
		{
			dest_x = xview + irandom(wview)
			dest_y = yview + irandom(hview/2)
		}
		
		if x < dest_x && xspeed < 3
			xspeed += 0.25
		if x > dest_x && xspeed > -3
			xspeed -= 0.25
		if y < dest_y && yspeed < 3
			yspeed += 0.25
		if y > dest_y && yspeed > -3
			yspeed -= 0.25
			
		if counter >= 120
			ai_lap()
	}
	
	if AI = SPIT
	{
		image_index = 1
		xspeed *= 0.9
		yspeed *= 0.9
		
		counter += 1
		if counter/10 = round(counter/10)
			instance_create(x,y,objEnemyFloatingSkullBone)
			
		if counter >= 180
			ai_lap()
	}
}