/// @description inherit then make unique!
event_inherited();
hp = 1

ai_step = 0
counter = 0

scrPhysicsInit()
yspeed_accel = 0.2
yspeed = -6 - random(4)
xspeed = -2 + random(4)

AI = 0
	BALL = 0
	EMERGE = 1
	WANDER = 2
	
crawling = irandom(1)

if crawling = 0
	walkspeed = 0.5
else
	walkspeed = 0.25
	
depth = -1

dest_x = 0

bitsound(sndThud)