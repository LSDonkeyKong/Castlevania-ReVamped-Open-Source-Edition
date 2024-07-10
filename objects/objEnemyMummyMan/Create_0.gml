/// @description inherit then make unique!
event_inherited();
can_leave = true
name = "Mummy Man"
hp = 20

ai_step = 0
counter = 0

scrPhysicsInit()
yspeed_accel = 0.2

walkspeed = 0.6

if irandom(1) = 1
	image_xscale = -1
	
enemy_number = 21