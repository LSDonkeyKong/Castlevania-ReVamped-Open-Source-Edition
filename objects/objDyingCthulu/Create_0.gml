/// @description sink and shit
alarm[0] = 15
alarm[1] = 240
bitsound(sndBossDie2)
alarm[2] = 120
image_speed = 2

face_player(0)

if global.nodamage = 0
	instance_create(x,y,objItemCrown)