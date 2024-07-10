/// @description inherit then make unique!
event_inherited();
can_leave = true
hp = 1

damage = 2

ai_step = 0
counter = 0

scrPhysicsInit()

direction = random(360)
speed = 4

	xspeed = hspeed
	yspeed = vspeed
	speed = 0
	
image_index = irandom(7)