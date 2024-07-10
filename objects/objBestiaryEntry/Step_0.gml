/// @description entry information text
if entry_type = ENEMY
{
	entry_number = string(global.enemy_entry + 1)
	if ds_map_find_value( global.savedata,"bestiary" + string(global.enemy_entry) ) != undefined
	{
		entry_name = bestiary_names(global.enemy_entry)
		entry = bestiary_entries(global.enemy_entry)
		entry_hp = bestiary_hp(global.enemy_entry)
		entry_kills = string( ds_map_find_value( global.savedata,"bestiary" + string(global.enemy_entry) ) )
		entry_pic = global.enemy_entry
	}
	else
	{
		entry_name = "????"
		entry = "------"
		entry_hp = "???"
		entry_kills = "0"
		entry_pic = 50
	}
}

if entry_type = BOSS
{
	entry_number = string(global.boss_entry + 1)
	if ds_map_find_value( global.savedata,"bestiary_boss" + string(global.boss_entry) ) != undefined
	{
		entry_name = bestiary_boss_names(global.boss_entry)
		entry = bestiary_boss_entries(global.boss_entry)
		entry_hp = bestiary_boss_hp(global.boss_entry)
		entry_kills = string( ds_map_find_value( global.savedata,"bestiary_boss" + string(global.boss_entry) ) )
		entry_pic = global.boss_entry
	}
	else
	{
		entry_name = "????"
		entry = "????????"
		entry_hp = "???"
		entry_kills = "0"
		entry_pic = 10
	}
}