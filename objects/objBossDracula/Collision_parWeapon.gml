/// @description special sound
if i_frames = 0
{
	//damage numbers with critical card
	if global.critical_card = 2
	{
		reported_value = other.damage
		with( instance_create_depth(x,y,0,objDamageNumber) )
			value = other.reported_value
	}
			
	hp += -other.damage
	i_frames = 30
	if hp > 0
		bitsound(sndBossHit0)
	else
	{//kill the enemy
		bitsound(sndEnemyBoom0)
		instance_destroy()
	}
	//spawn a critical hit thing if critical and also reduce the damage to normal
	if other.critical
	{
		instance_create(x,y,objCriticalHit)
		other.critical = false
		other.damage /= 3
	}
}