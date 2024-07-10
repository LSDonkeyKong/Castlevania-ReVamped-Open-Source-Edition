/// @description inherit then make unique!
event_inherited();
hp = 1

ai_step = 0
counter = 0

AI = 0
	BURST = 0
	ZOOM = 1
	
scrPhysicsInit()
yspeed_accel = 0.2
face_player(0)
yspeed = -1 - random(5)
xspeed = -image_xscale * ( 3 + random(4) )
image_index = irandom(3)
image_speed = 0

personality = 1 + irandom(3)

can_leave = true