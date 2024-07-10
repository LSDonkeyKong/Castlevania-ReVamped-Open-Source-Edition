/// @description falling with wavy shit
event_inherited()
fallspeed = 0.5

if yspeed > 0
	xspeed = cos(y/8) * dir
	
if on_ground() = true
	xspeed = 0