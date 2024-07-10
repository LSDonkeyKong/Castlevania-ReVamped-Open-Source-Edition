/// @description physics for falling + invisible when hidden
scrPhysics()
if place_meeting(x,y,parSolid)
	visible = false
else
	visible = true
	
xspeed *= 0.9