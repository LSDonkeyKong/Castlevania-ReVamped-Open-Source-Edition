/// @description Swamp Thing AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	scrPhysics()
	//zero xspeed when slow enough
	if abs(xspeed) < 0.1
		xspeed = 0
	//face the direction of travel
	if xspeed < 0
		image_xscale = -1
	if xspeed > 0
		image_xscale = 1
		
	{//ai_step
		if ai_step >= 4
			ai_step = 0
		if ai_step = 0
			AI = APPEAR
		if ai_step = 1
			AI = STALK
		if ai_step = 2
			AI = DASH
		if ai_step = 3
			AI = MELT
	}
	
	if AI = APPEAR
	{
		xspeed *= 0.8 //remain still for this
		if player_exists() = true
			if abs(x - parPlayer.x) > 176
			{
				sprite_index = sprSwampThingGoo	
				counter = 0
				goo_time = 0
			}
			else
			{
				goo_time += 1
				if goo_time <= 60
					sprite_index = sprSwampThingGoo	
				else
				{
					sprite_index = sprSwampThingSpawn
					counter += 1
					if counter = 1
						image_index = 0
				}
			}
		image_speed = 1
	}
	
	if AI = STALK
	{
		sprite_set(sprSwampThing,1)
		if parPlayer.x < x && xspeed > -personality
			xspeed -= 0.1
		if parPlayer.x > x && xspeed < personality
			xspeed += 0.1
		
		if abs(x - parPlayer.x) < 160
			counter += 1
		if counter >= 90
			ai_lap()
		//dodge
		if abs(x - parPlayer.x) < 64 && instance_number(objWhip) > 0
			repeat(2) ai_lap()
	}
	
	if AI = DASH
	{
		sprite_set(sprSwampThingCharge,1)
		if abs(xspeed) < 1.5
			xspeed += 0.1 * image_xscale
		counter += 1
		if counter >= 180
			ai_lap()
	}
	
	if AI = MELT
	{
		sprite_set(sprSwampThingMelt,1)
		xspeed *= 0.8
	}
}