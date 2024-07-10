/// @description sink and shit
alarm[0] = 15
bitsound(sndBossDie4)
alarm[2] = 120
alarm[1] = 240
image_speed = 2

face_player(0)

instance_destroy(objBossGranfalloonBody)

if global.nodamage = 0
	instance_create(x,y,objItemCrown)