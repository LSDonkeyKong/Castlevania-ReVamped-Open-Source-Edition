/// @description slow down
vspeed *= 0.9
if vspeed > -0.0001
	counter += 1

if counter >= 120
	instance_destroy()