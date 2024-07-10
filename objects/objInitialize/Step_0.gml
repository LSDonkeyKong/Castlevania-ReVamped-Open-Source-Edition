/// @description fullscreen and window size tracking
/*if ds_map_find_value(global.options,"fullscreen") = true
	window_set_fullscreen(true)
if ds_map_find_value(global.options,"fullscreen") = false
	window_set_fullscreen(false)*/
//window_set_size( 400 * ds_map_find_value(global.options,"windowscale"), 224 * ds_map_find_value(global.options,"windowscale") );