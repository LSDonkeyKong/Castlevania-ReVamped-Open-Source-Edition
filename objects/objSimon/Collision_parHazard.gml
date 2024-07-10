/// @description take damage and respawn
if i_frames = 0 && !hurting && !hazard_damage
{
	if global.vibration input_vibrate_constant(0.5,0,60)
	instance_destroy(objWhip)
	bitsound(sndSimonDamage)
	if global.cursed_card = 2
		global.hp = 0
	else
		global.hp -= 1 + ds_map_find_value(global.savedata,"spiciness")
	hurting = true
	whipping = false
	attacking = false
	sliding = false
	hazard_damage = true
	hurt_time = 60
	xspeed = 0
	yspeed = -4.75
	hurt_dir = facing
	xspeed = 0
	dashing = false
}