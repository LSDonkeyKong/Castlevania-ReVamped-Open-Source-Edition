/// @description restart game
ds_map_secure_save(global.gallery,"Castlevania_Endings.sav")

instance_create(x,y,objFadeOutShutter)

if ds_map_find_value(global.gallery,"bossrush") != 1 && global.enemy_collection >= 50
	room_goto(rmBossRushUnlocked)
else
	title_screen()