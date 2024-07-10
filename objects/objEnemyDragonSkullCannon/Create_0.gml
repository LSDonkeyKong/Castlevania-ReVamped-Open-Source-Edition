/// @description inherit then make unique!
event_inherited();
name = "Dragon Skull Cannon"
hp = 24

ai_step = 0
counter = 0

AI = 0
	PATROL = 0
	STARE = 1
	MACHINEGUN = 2
	
eyesight = 160 + irandom(160)
personality = 60 + irandom(60)

if irandom(1) = 1
	image_xscale = -1
	
scrPhysicsInit()
yspeed_accel = 0.2
fallspeed = 4

startled = false

frequency = 10

enemy_number = 7