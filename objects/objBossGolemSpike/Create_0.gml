/// @description inherit then make unique!
event_inherited();
hp = 1

ai_step = 0
counter = 0

scrPhysicsInit()
face_player(0)
yspeed_accel = 0.2
fallspeed = 4
xspeed = ( 2 * image_xscale ) + (random(2) * image_xscale)
depth = -1

bitsound(sndBlockBreak)

repeat(4)
	instance_create(x,y,objDebris)