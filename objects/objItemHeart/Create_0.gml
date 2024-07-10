/// @description setup to sine the other way
event_inherited();
dir = 1
if irandom(1) = 1
dir = -1

if instance_number(object_index) > 64
	instance_destroy()