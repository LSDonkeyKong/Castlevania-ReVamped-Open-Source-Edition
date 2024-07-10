/// @description find position, shrink and despawn
scrPhysics()

if shrink
{
	image_yscale += -0.25
	if image_yscale = 0
		instance_destroy()
}