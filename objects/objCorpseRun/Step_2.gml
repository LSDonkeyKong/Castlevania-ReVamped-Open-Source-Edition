/// @description Moneybag AI
//bat that goes thru walls
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	scrDefyPhysics()
	
	sprite_index = sprCorpseSmall
	if value >= 200
		sprite_index = sprCorpseMedium
	if value >= 500
		sprite_index = sprCorpseLarge
	
	if AI = HIDE
	{
		image_speed = 0.25
		
		if abs(x - parPlayer.x) < eyesight && abs(parPlayer.y - y) < eyesight
			counter += 1
			
		yspeed *= 0.9
		xspeed *= 0.9
		if counter >= 120
		{
			counter = 0
			AI = FLY 
		}
	}
	
	if AI = FLY
	{
		if counter/90 = round(counter/90)
		{
			scrViewData()
			goal_x = xview + irandom(400)
			goal_y = yview + irandom(224)
		}
		
		image_speed = 1
		
		if goal_x > x && xspeed < 2
			xspeed += 0.05
		if goal_x < x && xspeed > -2
			xspeed -= 0.05
			
		if goal_y > y && yspeed < 2
			yspeed += 0.05
		if goal_y < y && yspeed > -2
			yspeed -= 0.05
			
		counter += 1
			
		if counter >= 360
		{
			counter = 0
			AI = HIDE
		}
	}
}