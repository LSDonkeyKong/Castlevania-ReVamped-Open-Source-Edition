/// @description sink and shit
alarm[0] = 15
bitsound(sndBossDie7)
alarm[2] = 120
alarm[1] = 240
image_speed = 0

face_player(0)

image_speed = 0
image_index = 1

if global.nodamage = 0
	instance_create(x,y,objItemCrown)