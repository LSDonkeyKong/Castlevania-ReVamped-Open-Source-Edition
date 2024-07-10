/// @description inherit then make unique!
event_inherited();
can_leave = true
name = "Killer Toy"
hp = 1

ai_step = 0
counter = 0

scrPhysicsInit()
yspeed_accel = 0.2
walkspeed = 1.1

eyesight = 160

AI = 0
	PATROL = 0
	WOAH = 1
	CHARGE = 2
	RETREAT = 3
	
if irandom(1) = 1
	image_xscale = -1
	
enemy_number = 33