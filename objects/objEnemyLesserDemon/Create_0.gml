/// @description inherit then make unique!
event_inherited();
name = "Lesser Demon"
hp = 32
can_leave = true

ai_step = 0
counter = 0

scrPhysicsInit()
yspeed_accel = 0.1

AI = 0
	PATROL = 0
	FLY = 1
	LAND = 2
	SHOOT = 3
	
eyesight = 96

walkspeed = 0.75

if irandom(0) = 1
	image_xscale = -1
	
enemy_number = 32