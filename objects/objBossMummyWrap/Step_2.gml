/// @description Mummy Wrap AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	image_speed = 1 //always set image_speed since timestop AND i_frames freeze it
	scrViewData()
	if y < yview && image_yscale = -1
		instance_destroy()
	if place_meeting(x,y+1,parSolid) && image_yscale = 1
		instance_destroy()
	y += image_yscale * 4
}