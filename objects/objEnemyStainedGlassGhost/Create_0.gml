/// @description inherit then make unique!
event_inherited();
can_leave = true
name = "Stained Glass Ghost"
hp = 64

ai_step = 0
counter = 0

scrPhysicsInit()
yspeed_accel = 0.2
walkspeed = 0.4

if irandom(1) = 1
	image_xscale = -1
	
enemy_number = 8