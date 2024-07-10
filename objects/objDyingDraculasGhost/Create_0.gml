/// @description sink and shit
alarm[0] = 15
bitsound(sndBossDie2)
alarm[2] = 120
alarm[1] = 240
image_speed = 2

face_player(0)

if !global.boss_rush
{
	ds_map_secure_save(global.savedata,global.filename)
	instance_create(x,y,objSavePopup)
}

if global.nodamage = 0
	instance_create(x,y,objItemCrown)