/// @description setup shit
vspeed = -5
text = @"Whip Save Points 
to start warping"

alarm[0] = 5
if instance_number(objSavePopup) > 0
	instance_destroy()
	
counter = 0