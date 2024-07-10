/// @description inherit then make unique!
event_inherited();
can_leave = true
hp = 1

ai_step = 0
counter = 0

AI = 0
	HOPIN = 0
	SLITHER = 1
	
scrPhysicsInit()
yspeed_accel = 0.2
walkspeed = 2

if x < 32
	x = 32
if x > room_width - 32
	x = room_width - 32