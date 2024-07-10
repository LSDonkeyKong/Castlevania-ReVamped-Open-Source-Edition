/// @description all bestiary entries
if debug_mode
{
	bitsound(sndEnemyHit2)
	repeat(50)
	{
		ds_map_replace( global.savedata,"bestiary" + string(cheat_number),1 ) 
		cheat_number += 1
	}
	global.enemy_collection = 50
	cheat_number = 0
	repeat(10)
	{
		ds_map_replace( global.savedata,"bestiary_boss" + string(cheat_number),1 ) 
		cheat_number += 1
	}
	global.boss_collection = 10
}










