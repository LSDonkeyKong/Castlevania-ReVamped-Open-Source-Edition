/// @description Medusa Head AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	image_speed = 1 //always set image_speed since timestop AND i_frames freeze it
	
	x += 2 * image_xscale
	
	y = starting_y + ( 64*cos(x/32) )
	
	//despawn, bitch
	scrViewData()
	if image_xscale = 1 && x > xview + wview + 16
		instance_destroy()
	if image_xscale = -1 && x < xview - 16
		instance_destroy()
}