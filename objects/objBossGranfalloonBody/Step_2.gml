/// @description Fleshbody AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	{//ai step
		if ai_step >= 3 ai_step = 0
		if ai_step = 0 AI = BALL
		if ai_step = 1 AI = EMERGE
		if ai_step = 2 AI = WANDER
	}
	
	scrPhysics()
	
	if xspeed < 0
		image_xscale = -1
	if xspeed > 0
		image_xscale = 1
	
	if AI = BALL
	{
		sprite_set(sprGranfalloonBodyBall,1)
		if on_ground() = true
		{
			bitsound(sndDrip)
			xspeed = 0
			ai_lap()
		}
	}
	
	if AI = EMERGE
	{
		counter += 1
		if crawling = 0
			sprite_set(sprGranfalloonBodySplat,1)
		else
			sprite_set(sprGranfalloonBodySplatCrawl,1)
		if counter = 1
			image_index = 0
		if image_index >= frame_count()
			ai_lap()
	}
	
	if AI = WANDER
	{
		if crawling = 0
			sprite_set(sprGranfalloonBody,1)
		else
			sprite_set(sprGranfalloonBodyCrawl,1)
			
		counter += 1
		
		if counter/120 = round(counter/120)
			dest_x = irandom(room_width)
			
		if abs(x - dest_x) < 16
			dest_x = irandom(room_width)
			
		if x < dest_x && xspeed < walkspeed
			xspeed += 0.1
		if x > dest_x && xspeed > -walkspeed
			xspeed -= 0.1
	}
}