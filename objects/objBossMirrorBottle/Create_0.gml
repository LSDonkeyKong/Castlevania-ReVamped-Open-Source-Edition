/// @description inherit then make unique!
event_inherited();
can_leave = true
hp = 1

ai_step = 0
counter = 0

if instance_number(objBossMirrorMonster) > 0
	image_xscale = objBossMirrorMonster.image_xscale
	
scrPhysicsInit()
yspeed = -2
yspeed_accel = 0.3
hspeed = 2.5 * image_xscale