/// @description ds map! + gates
if global.boss_music = true
{
	instance_create(x,y,objExplosion)
	instance_create(x,y,objEarthquake)
	if global.nodamage == 0 && instance_number(objItemCrown) == 0
		instance_create(x,y,objItemCrown)
}

global.boss_music = false
instance_destroy(parGate)
collected()

instance_create(room_width/2,room_height/2 - 32,objBossOrbSpawnIn)

