/// @description strings
item_messages()

if global.whip_aim 
	whip_aim_string = "Dynamic Strike\n"
if global.morningstar 
	morningstar_string = "Morningstar\n"
if global.flame_whip 
	flame_whip_string = "Flame Whip\n"
if global.ice_whip 
	ice_whip_string = "Frost Whip\n"
if global.thunder_whip 
	thunder_whip_string = "Thunder Whip\n"
if global.dubble_jump 
	dubble_jump_string = "Leap Stone\n"
if global.slide 
	slide_string = "Breezey Slide\n"
if global.walljump 
	walljump_string = "Gripping Claws\n"
if global.water_armor 
	water_armor_string = "Aquatic Armor\n"
if global.ground_pound 
	ground_pound_string = "Bridge Snapper\n"
if global.dash 
	dash_string = "Dash Stone\n"
if global.super_slide 
	super_slide_string = "Spiked Boots\n"

whips_string = "WHIPS\n-----\n"+string(morningstar_string) + string(flame_whip_string) + string(ice_whip_string) + string(thunder_whip_string)
abilities_string = "ABILITIES\n---------\n"+string(whip_aim_string) + string(dubble_jump_string) + string(ground_pound_string) + string(water_armor_string)
boots_string = "BOOTS\n-----\n" + string(slide_string) + string(walljump_string) + string(dash_string) + string(super_slide_string)

description_string = "????????????"

if selection = 0 && global.morningstar
	description_string = global.message_morningstar
if selection = 1 && global.flame_whip
	description_string = global.message_flamewhip
if selection = 2 && global.ice_whip
	description_string = global.message_icewhip
if selection = 3 && global.thunder_whip
	description_string = global.message_thunderwhip
	
if selection = 4 && global.whip_aim
	description_string = global.message_whipaim
if selection = 5 && global.dubble_jump
	description_string = global.message_dubblejump
if selection = 6 && global.ground_pound
	description_string = global.message_groundpound
if selection = 7 && global.water_armor
	description_string = global.message_waterarmor
	
if selection = 8 && global.slide
	description_string = global.message_slide
if selection = 9 && global.walljump
	description_string = global.message_walljump
if selection = 10 && global.dash
	description_string = global.message_dash
if selection = 11 && global.super_slide
	description_string = global.message_superslide
	
//Game Progress Strings
item_string = "Items: " + string(global.collection) + "%" + "  |  "
enemy_string = "Enemies: " + string(enemy * 2) + "%" + "  |  "
boss_string = "Bosses: " + string(boss * 10) + "%"

completion_string = string(item_string) + string(enemy_string) + string(boss_string)