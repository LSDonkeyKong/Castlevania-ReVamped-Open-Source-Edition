/// @description move shit
if player_exists() = true
	with( parPlayer )
	{
		if place_meeting(x,y+1,other) && !place_meeting(x + other.image_xscale, y,parSolid)
			x += other.image_xscale
	}
	
if instance_number(parEnemy) > 0
	with( parEnemy )
	{
		if place_meeting(x,y+1,other) && !place_meeting(x + other.image_xscale, y,parSolid)
			x += other.image_xscale
	}
	
depth = 15