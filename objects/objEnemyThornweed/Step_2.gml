/// @description Thornweed AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	{//ai step
		if ai_step >= 3 ai_step = 0
		if ai_step = 0 AI = HIDE
		if ai_step = 1 AI = EMERGE
		if ai_step = 2 AI = CHILL
	}
		
	if AI = HIDE
	{
		sprite_set(sprThornweedHide,0)
		if counter < 30
			counter += 1
		if counter = 1
			image_index =2
		if counter = 15
			image_index = 1
		if counter = 30
			image_index = 0
			
		if abs(parPlayer.x - x) < eyesight && abs(parPlayer.y - y) < 32
			ai_lap()
	}
	
	if AI = EMERGE
	{
		sprite_set(sprThornweedHide,1)
		counter += 1
		if counter = 1
			image_index = 0
		if image_index >= frame_count()
		{
			image_index = frame_count()
			if counter > 30
				ai_lap()
		}
	}
	
	if AI = CHILL
	{
		sprite_set(sprThornweed,1)
		if abs(parPlayer.x - x) > 128
			ai_lap()
	}
}