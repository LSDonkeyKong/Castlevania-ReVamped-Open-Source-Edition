/// @description go
repeat(3)
instance_create_depth(x,y,0,objBossFrankieDebris)
	
alarm[0] = 8

alarm[1] = 120

bitsound(sndEnemyPound)

if instance_number(objBossFrankie) > 0
{
	if objBossFrankie.hp < objBossFrankie.hp_phase1
		other.alarm[1] = 240
}