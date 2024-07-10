/// @description sink and shit
alarm[0] = 15
bitsound(sndBossDie0)
alarm[2] = 120
vspeed = 0.25
alarm[1] = 240

if global.nodamage == 0
	instance_create(x,y,objItemCrown)