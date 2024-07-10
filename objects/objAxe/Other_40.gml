/// @description despawn if falling
scrViewData()
if vspeed > 4 && y > yview + hview
	instance_destroy()