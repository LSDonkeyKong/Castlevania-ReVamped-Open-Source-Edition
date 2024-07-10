/// @description Blazing Spirit AI
if i_frames < 3 && global.timestop/2 = round(global.timestop/2)
{
	{//ai step
		if ai_step >= 7 ai_step = 0
		if ai_step = 0 AI = SLEEP
		if ai_step = 1 AI = TELEPORT
		if ai_step = 2 AI = FIRE
		if ai_step = 3 AI = TELEPORT
		if ai_step = 4 AI = FIRE
		if ai_step = 5 AI = TELEPORT
		if ai_step = 6 AI = FIRE
	}
		
	scrDefyPhysics()
	face_player(0)
	
	if abs(xspeed) < 0.1
		xspeed = 0
	if abs(yspeed) < 0.1
		yspeed = 0
		
	if AI = SLEEP
	{
		xspeed *= 0.9
		yspeed *= 0.9
		sprite_set(sprBlazingSpiritTeleport,1)
		
		if abs(x - parPlayer.x) < eyesight && in_view() = true
			counter += 1
		if counter > 60
			ai_lap()
	}
	
	if AI = TELEPORT
	{
		sprite_set(sprBlazingSpiritTeleport,1)
		counter += 1
		if counter = 1
		{
			bitsound(sndWeaponLaurel)
			scrViewData()
			roll = irandom(3)
			if roll = 0
			{
				dest_x = xview + 64 
				dest_y = yview + 64
			}
			if roll = 1
			{
				dest_x = xview + wview - 64 
				dest_y = yview + 64
			}
			if roll = 2
			{
				dest_x = xview + 64 
				dest_y = yview + hview - 64
			}
			if roll = 3
			{
				dest_x = xview + wview - 64 
				dest_y = yview + hview - 64
			}
		}
		
		if x < dest_x && xspeed < 2.5
			xspeed += 0.1
		if x > dest_x && xspeed > -2.5
			xspeed -= 0.1
		if y < dest_y && yspeed < 2.5
			yspeed += 0.1
		if y > dest_y && yspeed > -2.5
			yspeed -= 0.1
			
		if abs(x - dest_x) < 32 && abs(y - dest_y) < 32
			ai_lap()
	}
	
	if AI = FIRE
	{
		xspeed *= 0.75
		yspeed *= 0.75
		
		sprite_set(sprBlazingSpirit,1)
		counter += 1
		if counter = 1
			bitsound(sndWeaponLaurelOff)
		if counter = 30
			instance_create(x,y,objEnemyBlazingSpiritBullet)
		if counter >= 60
			ai_lap()
	}
}