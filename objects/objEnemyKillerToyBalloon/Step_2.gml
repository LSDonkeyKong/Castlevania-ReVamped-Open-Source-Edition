/// @description Balloon AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	image_speed = 0
	
	scrDefyPhysics()
	
	if yspeed > -2
		yspeed -= 0.1
		
	scrViewData()
	
	if y < yview
		instance_destroy()
}