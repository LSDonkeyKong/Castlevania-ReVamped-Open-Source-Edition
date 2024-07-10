/// @description Bat AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	scrPhysics()
	if AI = PERCH
	{
		sprite_index = sprBatPerch
		if abs(x - parPlayer.x) < eyesight && abs(parPlayer.y - y) < 128
			counter += 1
		if counter >= 60
			AI = FLY
		if !place_meeting(x,y-4,parSolid)
			AI = FLY
	}
	
	if AI = FLY
	{
		yspeed_accel = 0
		
		sprite_set(sprBat,1)
		if parPlayer.x < x - 32
			image_xscale = -1
		if parPlayer.x > x + 32
			image_xscale = 1
		
		if image_xscale = 1 && xspeed < 2
			xspeed += 0.05
		if image_xscale = -1 && xspeed > -2
			xspeed -= 0.05
			
		if parPlayer.y > y && yspeed < 2
			yspeed += 0.05
			
		if parPlayer.y < y && yspeed > -2
			yspeed -= 0.05
			
		if on_ground() = true
		{
			if !place_meeting(x,y-1,parSolid)
				y -= 1
			yspeed *= -1
		}
	}
}