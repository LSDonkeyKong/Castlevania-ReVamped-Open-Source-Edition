/// @description drift apart
repeat(4)
{
	if x < other.x && !place_meeting(x-1,y,parSolid) && place_meeting(x-1,y+1,parSolid)
		x -= 1
	
	if x > other.x && !place_meeting(x+1,y,parSolid) && place_meeting(x+1,y+1,parSolid)
		x += 1
	
	if x = other.x 
	{
		rand = irandom(4)
		if place_meeting(x-2+rand,y,parSolid)
			x += rand
	}
}