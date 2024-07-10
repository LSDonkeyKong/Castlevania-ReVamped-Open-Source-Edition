/// @description inherit then make unique!
event_inherited();
can_leave = true
hp = 1

ai_step = 0
counter = 0

scrPhysicsInit()
yspeed_accel = 0.2

repeat(32)
	if place_meeting(x,y,parSolid)
		y -= 1
	
bitsound(sndWaterSplash)