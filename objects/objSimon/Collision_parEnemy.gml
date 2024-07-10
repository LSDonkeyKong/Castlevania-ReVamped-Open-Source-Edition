/// @description take damage, bro
if i_frames = 0 && !hurting
{
	if global.vibration input_vibrate_constant(0.5,0,45)
	bitsound(sndSimonDamage)
	if global.cursed_card = 2
	{
		global.hp = 0
		if other.object_index = objEnemySkeleton
			global.richard = true
	}
	else
		global.hp -= other.damage + ds_map_find_value(global.savedata,"spiciness")
	if global.phaseslide_card < 2
		hurting = true
	else
		i_frames = 60
	if global.phaseslide_card < 2
	{
		instance_destroy(objWhip)
		attacking = false
		whipping = false
	}
	//sliding = false
	if (!sliding && global.phaseslide_card < 2) or (sliding && !place_meeting(x,y-1,parSolid) && global.phaseslide_card < 2)
	{
		sliding = false
		hurt_time = other.damage * 15
		xspeed = 0
		if global.phaseslide_card < 2
		{
			yspeed = -2.75
			if other.x > x
				hurt_dir = -1
			else
				hurt_dir = 1
			xspeed = 1.2 * ( other.damage ) * hurt_dir
		}
	}
	if global.hp <= 0 && global.phaseslide_card == 2
		instance_change(objSimonDie,true)
	dashing = false
}