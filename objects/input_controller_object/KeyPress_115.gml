/// @description toggle fullscreen
if window_get_fullscreen() = false
{
	ds_map_replace(global.options,"fullscreen",true)
	window_set_fullscreen(true)
}
else
{
	ds_map_replace(global.options,"fullscreen",false)
	window_set_fullscreen(false)
}