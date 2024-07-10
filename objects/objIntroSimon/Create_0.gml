/// @description setup
alarm[1] = 300
alarm[0] = 500
alarm[2] = 1
hspeed = -1

record_string = "Record = " + string( ds_map_find_value(global.gallery,"record") )

instance_create(x,y,objFadeInShutter)
