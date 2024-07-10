/// @description slow down
vspeed *= 0.95
if vspeed > -0.00005
	instance_destroy()
	
if abs(vspeed) > 0.1 
	x += 2 * cos(y/8)