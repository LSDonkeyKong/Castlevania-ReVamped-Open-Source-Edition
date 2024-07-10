/// @description Dragon Skull Cannon AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	{//ai step
		if ai_step >= 6 ai_step = 0
		if ai_step = 0 AI = PATROL
		if ai_step = 1 AI = STARE
		if ai_step = 2 AI = MACHINEGUN
		if ai_step = 3 AI = STARE
		if ai_step = 4 AI = MACHINEGUN
		if ai_step = 5 AI = STARE
	}
	
	scrPhysics()
	//also stop falling if underneath another dragon skull cannon
	if place_meeting(x,y+1,object_index)
		yspeed = 0
	repeat(8)
		if place_meeting(x,y,object_index)
			y -= 1
	
	image_speed = 0
	
	if AI = PATROL
	{
		image_index = 0
		
		counter += 1
		
		if counter/120 = round(counter/120)
		{
			image_index = 1
			image_xscale *= -1
		}
		
		if abs(x - parPlayer.x) <= eyesight && abs(y - parPlayer.y) < 32
			ai_lap()
	}
	
	if AI = STARE
	{
		face_player(0)
		
		image_index = 0
			
		counter += 1
		
		if counter >= personality
			ai_lap()
	}
	
	if AI = MACHINEGUN
	{
		face_player(0)
		
		counter += 1
		
		if counter <= 15
			image_index = 1
		else
			image_index = 2
			
		if counter > 30 && counter/frequency = round(counter/frequency)
			instance_create(x,y,objEnemyDragonSkullBullet)
			
		if counter >= 60
			ai_lap()		
	}
	
	if AI < MACHINEGUN && startled = 0 && abs(x - parPlayer.x) <= 40 && abs(y - parPlayer.y) < 32
	{
		face_player(0)
		image_index = 1
		instance_create(x,y,objEnemyDragonSkullFlame)
		startled = 60
	}
	
	if startled > 0
	{
		startled -= 1
		image_index = 1
	}
}