/// @description stuff
application_surface_enable(true);
gamepad_set_vibration(0,0,0)

bitBGM(bgmUnderground)

selection = 0

instance_create(x,y,objFadeInShutter)

global.fileselect = 0

//file variables
simon0 = 0
simon0_new = false
simon0_collection = 0
simon0_area = 0
simon0_hours = 0
simon0_minutes = 0

simon1 = 0
simon1_new = false
simon1_collection = 0
simon1_area = 0
simon1_hours = 0
simon1_minutes = 0

simon2 = 0
simon2_new = false
simon2_collection = 0
simon2_area = 0
simon2_hours = 0
simon2_minutes = 0

deleted = false
deleted0 = false
deleted1 = false
deleted2 = false

bossrush_record = ds_map_find_value(global.gallery,"record")

//load file info
if (!file_exists("Simon0.sav"))
	simon0_new = true
else
{
	simon0 = ds_map_secure_load("Simon0.sav")
	
	simon0_collection = ds_map_find_value(simon0,"collection")
	simon0_area = ds_map_find_value(simon0,"area")
	simon0_hours = ds_map_find_value(simon0,"hours")
	simon0_minutes = ds_map_find_value(simon0,"minutes")
}

if (!file_exists("Simon1.sav"))
	simon1_new = true
else
{
	simon1 = ds_map_secure_load("Simon1.sav")

	simon1_collection = ds_map_find_value(simon1,"collection")
	simon1_area = ds_map_find_value(simon1,"area")
	simon1_hours = ds_map_find_value(simon1,"hours")
	simon1_minutes = ds_map_find_value(simon1,"minutes")
}

if (!file_exists("Simon2.sav"))
	simon2_new = true
else
{
	simon2 = ds_map_secure_load("Simon2.sav")
	
	simon2_collection = ds_map_find_value(simon2,"collection")
	simon2_area = ds_map_find_value(simon2,"area")
	simon2_hours = ds_map_find_value(simon2,"hours")
	simon2_minutes = ds_map_find_value(simon2,"minutes")
}
