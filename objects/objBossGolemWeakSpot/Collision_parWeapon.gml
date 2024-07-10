/// @description hurt me baby
damage = other.damage
i_frames = other.i_frames
critical = other.critical
//if abs(parPlayer.x - x) <= 24 && other.object_index = objWhip
//	damage = 1



if instance_number(objBossGolem) > 0
	with(objBossGolem)
		scrEnemyHurt()
if critical
{
	instance_create(x,y,objCriticalHit)
	other.critical = false
	other.damage = other.og_damage
	other.alarm[11] = 1
}