/// @description whip out + tile depth
if whipping && image_index >= frame_count() //handle frames when whipping
	whip_out = true
if !whipping
	whip_out = false

if global.current_whip = 2 //flaming homosexual?
	whip_frames = 5
else
	if global.current_whip = 4 //thunderous homo?
		whip_frames = 8
	else
		whip_frames = 15 // normal whip?
if global.current_whip = 3
	whip_frames = 20 //icy-ass whip

if whip_out
{
	image_index = frame_count()
	whip_counter += 1
	scrControls()
	if global.current_whip = 2 && kAttackHold && flame_counter < 45 //allow flame to be held out longer
	{
		whip_counter -= 1
		flame_counter += 1
	}
	if whip_counter > whip_frames
	{
		whip_out = false
		attacking = false
		whipping = false
		instance_destroy(objWhip)
	}
}
else
{
	whip_counter = 0
	flame_counter = 0
}
	
layer_depth(layer_get_id("Tiles"),100)
layer_depth(layer_get_id("Instances"),0)