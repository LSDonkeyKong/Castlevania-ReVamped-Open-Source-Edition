/// @description go
instance_create_depth(x,y,0,objBossFrankieShockwave)
with( instance_create_depth(x,y,0,objBossFrankieShockwave) )
	image_xscale = -1
	
alarm[1] = 64

bitsound(sndGlassBreak)

alarm_amount = 5

if instance_number(objBossFrankie) > 0
{
	if objBossFrankie.hp < objBossFrankie.hp_phase1
		other.alarm_amount = 8
	else
		other.alarm_amount = 32
}

alarm[0] = alarm_amount