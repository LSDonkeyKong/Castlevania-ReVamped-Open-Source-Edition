/// @description inherit then make unique!
event_inherited();
can_leave = true
hp = 1

ai_step = 0
counter = 0

scrPhysicsInit()

y = room_height - 32

if instance_number(objBossDraculasGhost) > 0
{
	if x < objBossDraculasGhost.x
		image_xscale = -1
}

damage = 2