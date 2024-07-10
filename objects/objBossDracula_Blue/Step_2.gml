/// @description DUMMY AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	image_speed = 1 //always set image_speed since timestop AND i_frames freeze it
	
	x += 4* image_xscale
	
	counter += 4
	
	y += ( 16*cos(counter/16) )
}