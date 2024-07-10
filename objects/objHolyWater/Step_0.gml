/// @description gravity + explode baby
vspeed += 0.3

if on_ground() = true && vspeed > 1
	instance_destroy()
