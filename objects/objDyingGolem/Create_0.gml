/// @description sink and shit
alarm[0] = 15
bitsound(sndBossDie1)
alarm[2] = 120
alarm[1] = 240

if global.nodamage = 0
	instance_create(x,y,objItemCrown)