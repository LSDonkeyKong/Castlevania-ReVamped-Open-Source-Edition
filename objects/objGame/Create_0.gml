/// @description start the game!
global.savedata = ds_map_create()

global.screen_sprite = 0

cheat_number = 0

global.boss_rush = false
if room = rmNewBossRush
	global.boss_rush = true
//change DS map's filename based on file number chosen at title screen
if global.fileselect = 0
	global.filename = "Simon0.sav"
if global.fileselect = 1
	global.filename = "Simon1.sav"
if global.fileselect = 2
	global.filename = "Simon2.sav"
	
if global.boss_rush
	global.filename = "SimonRush.sav"

//hard mode
if ds_map_find_value(global.savedata,"spiciness") == undefined
	ds_map_replace(global.savedata,"spiciness",0)

#region//GOLBAL GAME VARIABLES
//basic stats
global.hp = 4
global.hearts = 5
global.current_whip = 0
global.current_subweapon = 0
global.subweapon_cost = 0

//upgrades! these go in the DS map!
global.hp_max = 4
global.hearts_max = 15
global.whip_aim = false
global.morningstar = false
global.flame_whip = false
global.ice_whip = false
global.thunder_whip = false
global.dubble_jump = false
global.slide = false
global.walljump = false
global.water_armor = false
global.ground_pound = false
global.dash = false
global.super_slide = false

//game stats
global.area = 0
global.collection = 0
global.enemy_collection = 0
global.boss_collection = 0
global.timestop = 0
global.gold = 0

global.save_x = 48
global.save_y = 400
global.save_room = entFrontGate
global.save_area = 0

global.hours = 0
global.minutes = 0
global.seconds = 0
alarm[0] = 60

global.message_box = 0

//map
global.mx = 0
global.my = 0

//cards (!!! 0 = don't have it; 1 = have it; 2 = it is equipped !!!)
global.knife_card = 0
global.axe_card = 0
global.holywater_card = 0
global.bible_card = 0
global.boomerang_card = 0
global.rosary_card = 0
global.watch_card = 0
global.laurel_card = 0
global.blazingsteps_card = 0
global.heartdiscount_card = 0
global.meteordash_card = 0
global.healingstrike_card = 0
global.phaseslide_card = 0
global.cardiacstrike_card = 0
global.arsenalswap_card = 0
global.critical_card = 0
global.kinship_card = 0
global.cursed_card = 0

//card temp variables
global.whip_multiplier = 1
global.healing_strike_count = 0

#endregion

//boss rush shit
if global.boss_rush
{
	global.save_x = 200
	global.save_y = 112
	global.save_room = bosBossRush0
	global.hp = 12
	global.hearts = 100
	global.hp_max = 12
	global.hearts_max = 100
}

//create a playaaa
instance_create(global.save_x,global.save_y,objSimon)
instance_create(0,0,objMusicController)
instance_create(0,0,objMapController)
instance_create(0,0,objSaveWarpSystem)
instance_create(0,0,objBestiaryEntry)
instance_create(0,0,objSpiciness)
if room == rmNewGame
	instance_create(x,y,objDifficultyMenu)

ds_map_replace(global.savedata,"corpse run",0)
ds_map_replace(global.savedata,"corpse room",rmInit)
ds_map_replace(global.savedata,"corpse x",0)
ds_map_replace(global.savedata,"corpse y",0)

area_tracker = 99 //set to an impossible area so saves / new game tells you the area name