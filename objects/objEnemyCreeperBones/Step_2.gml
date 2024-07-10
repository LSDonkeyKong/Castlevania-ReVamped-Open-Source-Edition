/// @description Creeper Bones AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	scrPhysics()
	
	{//ai step
		if ai_step >= 3 ai_step = 0
		if ai_step = 0 AI = CHILL
		if ai_step = 1 AI = RUMBLE
		if ai_step = 2 AI = SPLODE
	}
		
	if abs(xspeed) < 0.1
		xspeed = 0
	if xspeed > 0 
		image_xscale = 1
	if xspeed < 0 
		image_xscale = -1
		
	if AI = CHILL
	{
		sprite_set(sprCreeperBones,1)

		if counter/60 = round(counter/60)
			dest_x = x - 200 + irandom(400)
			
		counter += 1
		
		if counter = 1
			rage_counter = 0
		
		if abs(x - dest_x) < 16
		{
			sprite_set(sprCreeperBones,0)
			image_index = 1
			xspeed *= 0.5
		}
		
		if x < dest_x && xspeed < 0.75
			xspeed += 0.25
		if x > dest_x && xspeed > -0.75
			xspeed -= 0.25
			
		if abs(parPlayer.x - x) < temper_range && abs(parPlayer.y - y) < 32
			rage_counter += 1
			
		if rage_counter >= 30
			ai_lap()
			
		if hp < 45
			ai_lap()
	}
	
	if AI = RUMBLE
	{
		sprite_set(sprCreeperBones,0)
		image_index = 1 
		
		xspeed *= 0.5
		counter += 1
		
		if counter = 1
			bitsound(sndCrumble)
		
		if counter/2 = round(counter/2)
			x += 1
		else
			x -= 1
			
		if counter >= 120
			ai_lap()
	}
	
	if AI = SPLODE
	{
		counter += 1
		sprite_set(sprCreeperBonesBoom,1)
		if counter = 1
			image_index = 0
			
		if image_index >= frame_count()
		{
			bitsound(sndEnemyPound)
			instance_create(x,y,objEarthquakeShort)
			repeat(32) instance_create(x,y,objEnemyCreeperBonesBone)
			instance_destroy()
		}
	}
	
	//stop at ledges
	if ( on_ground() = true && !place_meeting(x + (sign(xspeed) * 9),y + 12,parSolid) ) or ( place_meeting(x+sign(xspeed),y,parSolid) && place_meeting(x+sign(xspeed),y-1,parSolid) )
		xspeed = 0
}