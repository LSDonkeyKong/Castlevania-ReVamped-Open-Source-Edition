/// @description Frog AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	scrPhysics()
	
	{//ai step
		if ai_step >= 6 ai_step = 0
		if ai_step = 0 AI = CHILL
		if ai_step = 1 AI = HOP
		if ai_step = 2 AI = CHILL
		if ai_step = 3 AI = HOP
		if ai_step = 4 AI = CHILL
		if ai_step = 5 AI = TONGUE
	}
	
	if AI = CHILL
	{
		xspeed = 0
		sprite_set(sprFrog,0)
		
		counter += 1
		
		if counter < 30
			image_index = 0
		else
		{
			image_index = 1
			face_player(32)
		}
		
		if counter >= 60 && abs(parPlayer.x - x) < eyesight && in_view() = true
			ai_lap()
	}
	
	if AI = HOP
	{
		sprite_set(sprFrogJump,0)
		counter += 1
		if counter = 1
		{
			bitsound(sndDrip)
			face_player(32)
			xspeed = image_xscale * 2
			yspeed = -2 - random(5)
		}
		
		if yspeed < 0
			image_index = 0
		else
			image_index = 1
			
		if on_ground() = true && counter > 5
		{
			xspeed = 0
			ai_lap()
		}
		
	}
	
	if AI = TONGUE
	{
		face_player(32)
		xspeed = 0
		sprite_set(sprFrogTongue,1)
		counter += 1
		if counter = 1
		{
			bitsound(sndWeaponKnife)
			image_index = 0
		}
		if image_index >= frame_count()
			ai_lap()
	}
}