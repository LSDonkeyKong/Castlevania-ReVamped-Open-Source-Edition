/// @description sink and shit
alarm[0] = 15
bitsound(sndBossDie0)
alarm[2] = 120
alarm[1] = 240
image_speed = 1

face_player(0)

if global.nodamage = 0
	instance_create(x,y,objItemCrown)