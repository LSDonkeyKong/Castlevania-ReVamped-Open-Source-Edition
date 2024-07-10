function load_game()
{
	if (!file_exists(global.filename))
		exit;
	
	ds_map_destroy(global.savedata)
	global.savedata = ds_map_secure_load(global.filename)
	
	global.hp_max = ds_map_find_value(global.savedata,"hp_max")
	global.hearts = ds_map_find_value(global.savedata,"hearts")
	global.hearts_max = ds_map_find_value(global.savedata,"hearts_max")
	global.current_subweapon = ds_map_find_value(global.savedata,"current_subweapon")
	global.current_whip = ds_map_find_value(global.savedata,"current_whip")
	
	global.whip_aim = ds_map_find_value(global.savedata,"whip_aim")
	global.morningstar = ds_map_find_value(global.savedata,"morningstar")
	global.flame_whip = ds_map_find_value(global.savedata,"flame_whip")
	global.ice_whip = ds_map_find_value(global.savedata,"ice_whip")
	global.thunder_whip = ds_map_find_value(global.savedata,"thunder_whip")
	global.dubble_jump = ds_map_find_value(global.savedata,"dubble_jump")
	global.slide = ds_map_find_value(global.savedata,"slide")
	global.walljump = ds_map_find_value(global.savedata,"walljump")
	global.water_armor = ds_map_find_value(global.savedata,"water_armor")
	global.ground_pound = ds_map_find_value(global.savedata,"ground_pound")
	global.dash = ds_map_find_value(global.savedata,"dash")
	global.super_slide = ds_map_find_value(global.savedata,"super_slide")

	global.area = ds_map_find_value(global.savedata,"area")
	global.collection = ds_map_find_value(global.savedata,"collection")
	if ds_map_find_value(global.savedata,"enemy_collection") != undefined
		global.enemy_collection = ds_map_find_value(global.savedata,"enemy_collection")
	if ds_map_find_value(global.savedata,"boss_collection") != undefined
		global.boss_collection = ds_map_find_value(global.savedata,"boss_collection")
	global.gold = ds_map_find_value(global.savedata,"gold")

	global.hours = ds_map_find_value(global.savedata,"hours")
	global.minutes = ds_map_find_value(global.savedata,"minutes")
	global.seconds = ds_map_find_value(global.savedata,"seconds")

	global.save_x = ds_map_find_value(global.savedata,"save_x")
	global.save_y = ds_map_find_value(global.savedata,"save_y")
	global.save_room = ds_map_find_value(global.savedata,"save_room")
	global.save_area = ds_map_find_value(global.savedata,"save_area")

	global.knife_card = ds_map_find_value(global.savedata,"knife_card")
	global.axe_card = ds_map_find_value(global.savedata,"axe_card")
	global.holywater_card = ds_map_find_value(global.savedata,"holywater_card")
	global.bible_card = ds_map_find_value(global.savedata,"bible_card")
	global.boomerang_card = ds_map_find_value(global.savedata,"boomerang_card")
	global.rosary_card = ds_map_find_value(global.savedata,"rosary_card")
	global.watch_card = ds_map_find_value(global.savedata,"watch_card")
	global.laurel_card = ds_map_find_value(global.savedata,"laurel_card")
	global.blazingsteps_card = ds_map_find_value(global.savedata,"blazingsteps_card")
	global.heartdiscount_card = ds_map_find_value(global.savedata,"heartdiscount_card")
	global.meteordash_card = ds_map_find_value(global.savedata,"meteordash_card")
	global.healingstrike_card = ds_map_find_value(global.savedata,"healingstrike_card")
	global.phaseslide_card = ds_map_find_value(global.savedata,"phaseslide_card")
	global.cardiacstrike_card = ds_map_find_value(global.savedata,"cardiacstrike_card")
	global.arsenalswap_card = ds_map_find_value(global.savedata,"arsenalswap_card")
	global.critical_card = ds_map_find_value(global.savedata,"critical_card")
	global.kinship_card = ds_map_find_value(global.savedata,"kinship_card")
	global.cursed_card = ds_map_find_value(global.savedata,"cursed_card")
	
	//load circumstances

	with parPlayer
	{
		xspeed = 0
		yspeed = 0

		global.hp = global.hp_max

		x = global.save_x
		y = global.save_y

		room_goto(global.save_room)
		//instance_create(x,y,objFadeInShutter)
	}
}

function write_globals()
{
	ds_map_replace(global.savedata,"hp_max",global.hp_max)
	ds_map_replace(global.savedata,"hearts",global.hearts)
	ds_map_replace(global.savedata,"hearts_max",global.hearts_max)
	ds_map_replace(global.savedata,"current_subweapon",global.current_subweapon)
	ds_map_replace(global.savedata,"current_whip",global.current_whip)
	
	ds_map_replace(global.savedata,"whip_aim",global.whip_aim)
	ds_map_replace(global.savedata,"morningstar",global.morningstar)
	ds_map_replace(global.savedata,"flame_whip",global.flame_whip)
	ds_map_replace(global.savedata,"ice_whip",global.ice_whip)
	ds_map_replace(global.savedata,"thunder_whip",global.thunder_whip)
	ds_map_replace(global.savedata,"dubble_jump",global.dubble_jump)
	ds_map_replace(global.savedata,"slide",global.slide)
	ds_map_replace(global.savedata,"walljump",global.walljump)
	ds_map_replace(global.savedata,"water_armor",global.water_armor)
	ds_map_replace(global.savedata,"ground_pound",global.ground_pound)
	ds_map_replace(global.savedata,"dash",global.dash)
	ds_map_replace(global.savedata,"super_slide",global.super_slide)

	ds_map_replace(global.savedata,"area",global.area)
	ds_map_replace(global.savedata,"collection",global.collection)
	ds_map_replace(global.savedata,"enemy_collection",global.enemy_collection)
		if ds_map_find_value(global.savedata,"enemy_collection") = undefined
			ds_map_replace(global.savedata,"enemy_collection",0)
	ds_map_replace(global.savedata,"boss_collection",global.boss_collection)
		if ds_map_find_value(global.savedata,"boss_collection") = undefined
			ds_map_replace(global.savedata,"boss_collection",0)
	ds_map_replace(global.savedata,"gold",global.gold)

	ds_map_replace(global.savedata,"hours",global.hours)
	ds_map_replace(global.savedata,"minutes",global.minutes)
	ds_map_replace(global.savedata,"seconds",global.seconds)

	ds_map_replace(global.savedata,"save_x",global.save_x)
	ds_map_replace(global.savedata,"save_y",global.save_y)
	ds_map_replace(global.savedata,"save_room",global.save_room)
	ds_map_replace(global.savedata,"save_area",global.save_area)

	ds_map_replace(global.savedata,"knife_card",global.knife_card)
	ds_map_replace(global.savedata,"axe_card",global.axe_card)
	ds_map_replace(global.savedata,"holywater_card",global.holywater_card)
	ds_map_replace(global.savedata,"bible_card",global.bible_card)
	ds_map_replace(global.savedata,"boomerang_card",global.boomerang_card)
	ds_map_replace(global.savedata,"rosary_card",global.rosary_card)
	ds_map_replace(global.savedata,"watch_card",global.watch_card)
	ds_map_replace(global.savedata,"laurel_card",global.laurel_card)
	ds_map_replace(global.savedata,"blazingsteps_card",global.blazingsteps_card)
	ds_map_replace(global.savedata,"heartdiscount_card",global.heartdiscount_card)
	ds_map_replace(global.savedata,"meteordash_card",global.meteordash_card)
	ds_map_replace(global.savedata,"healingstrike_card",global.healingstrike_card)
	ds_map_replace(global.savedata,"phaseslide_card",global.phaseslide_card)
	ds_map_replace(global.savedata,"cardiacstrike_card",global.cardiacstrike_card)
	ds_map_replace(global.savedata,"arsenalswap_card",global.arsenalswap_card)
	ds_map_replace(global.savedata,"critical_card",global.critical_card)
	ds_map_replace(global.savedata,"kinship_card",global.kinship_card)
	ds_map_replace(global.savedata,"cursed_card",global.cursed_card)
}