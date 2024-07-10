/// @description Spider AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	image_speed = 1 //always set image_speed since timestop AND i_frames freeze it
	
	{//ai_step
		if ai_step >= 4	ai_step = 0
		if ai_step = 0 AI = CREEP
		if ai_step = 1 AI = CRAWL
		if ai_step = 2 AI = SPIT
		if ai_step = 3 AI = RETREAT
	}
	
	scrViewData()
	
	if AI = CREEP
	{
		x = xview + irandom(wview)
		y = yview - 16 + ( irandom(1) * (hview+32) )
		counter += 1
		
		crawl_dist = 32 + irandom(48)
		
		if counter > 120
			ai_lap()
	}
	
	if AI = CRAWL
	{
		if y < yview + 96
			y += 2
		if y > yview + hview - 96
			y -= 2
		
		counter += 1
		
		if counter > crawl_dist/2
			ai_lap()		
	}
	
	if AI = SPIT
	{
		image_speed = 0.5
		counter += 1
		if counter = 60
			instance_create(x,y,objEnemySpiderWeb)
		if counter > 90
			ai_lap()
	}
	
	if AI = RETREAT
	{
		if y > yview + (hview/2)
			y += 2
		if y < yview + (hview/2)
			y -= 2
			
		if ( y < yview) or ( y > yview + hview )
			ai_lap()
	}
}