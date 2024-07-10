/// @description inherit then make unique!
event_inherited();
name = "Zombie"
hp = 1

ai_step = 0
counter = 0

AI = 0
	APPEAR = 0
	STALK = 1
	DASH = 2
	MELT = 3
	
scrPhysicsInit()
yspeed_accel = 0.2
personality = 0.1 + random(0.5)
goo_time = 0

enemy_number = 0