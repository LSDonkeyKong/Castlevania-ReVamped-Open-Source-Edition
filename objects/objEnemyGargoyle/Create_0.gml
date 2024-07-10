/// @description inherit then make unique!
event_inherited();
name = "Gargoyle"
hp = 32

ai_step = 0
counter = 0

AI = 0
	SIT = 0
	FLY = 1
	CORNER = 2
	SPIT = 3
	RETURN = 4
	
scrPhysicsInit()
yspeed_accel = 0.3
eyesight = 240
personality = 60 + irandom(180)
chosen = false

enemy_number = 11