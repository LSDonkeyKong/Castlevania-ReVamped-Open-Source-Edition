/// @description destroy the spawner
global.order_mummies += 1
with( objSpawnerMummies )
{
	if global.order_mummies >= mummy_order
		alarm[0] = 30
}
if global.order_mummies >= 5
	instance_destroy(objSpawnerMummies)
instance_destroy()
