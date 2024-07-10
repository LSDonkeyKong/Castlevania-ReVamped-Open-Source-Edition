/// @description setup
alarm[0] = 10
alarm[1] = 1
	
instance_destroy(objFadeOutShutter)

if layer_exists( layer_get_id("Tiles") )
	layer_depth(layer_get_id("Tiles"),100)
if layer_exists( layer_get_id("Instances") )
	layer_depth(layer_get_id("Instances"),0)