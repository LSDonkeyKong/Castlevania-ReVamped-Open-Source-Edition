/// @description setup
hspeed = -2 + random(4)
vspeed = -2 + random(2)

//spawn limit

if instance_number(object_index) > 8
	instance_destroy()