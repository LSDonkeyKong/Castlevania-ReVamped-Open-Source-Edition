/// @description Black Leopard AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	scrPhysics()
	
	{//AI Step
		if ai_step >= 6 ai_step = 0
		if ai_step = 0 AI = CHILL
		if ai_step = 1 AI = RUN
		if ai_step = 2 AI = JUMP
		if ai_step = 3 AI = RUN
		if ai_step = 4 AI = JUMP
		if ai_step = 5 AI = RUN
	}
	
	//face direction of travel
	if xspeed > 0
		image_xscale = 1
	if xspeed < 0
		image_xscale = -1
	
	if AI = CHILL
	{
		sprite_set(sprBlackLeopard,1)
		xspeed *= 0.9
		if parPlayer.x < x
			image_xscale = -1
		if parPlayer.x > x
			image_xscale = 1
		if abs(x - parPlayer.x) < eyesight
			counter += 1
		if counter >= 30
			ai_lap()
			
	}
	
	if AI = RUN 
	{
		if on_ground() = true
			sprite_set( sprBlackLeopardMove,1)
		else
		{
			sprite_set(sprBlackLeopardMove,0)
			image_index = 0
		}
		if parPlayer.x < x && xspeed > -walkspeed && on_ground() = true
			xspeed -= 0.1
		if parPlayer.x > x && xspeed < walkspeed && on_ground() = true
			xspeed += 0.1
			
		counter += 1
		if counter > 120
			ai_lap()
	}
	
	if AI = JUMP
	{
		if on_ground() = true
		{
			yspeed = -3.25
			ai_lap()
		}
	}
}