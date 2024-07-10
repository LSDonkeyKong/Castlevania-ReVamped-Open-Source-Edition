/// @description inherit then make unique!
event_inherited();
can_leave = true
hp = 1

ai_step = 0
counter = 0

scrPhysicsInit()

if instance_number(objBossDraculasGhost) > 0
	image_xscale = objBossDraculasGhost.image_xscale

xspeed = 4 * image_xscale

yspeed = 4

bitsound(sndWeaponAxe)

damage = 2