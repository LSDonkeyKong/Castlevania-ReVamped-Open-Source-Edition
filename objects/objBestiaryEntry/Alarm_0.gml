/// @description go invisible baby
instance_activate_all()
scroll = 0
visible = false
bitsound(sndPickupHeart)
global.view_entry = false
if entry_type = 0
	instance_create(x,y,objBestiaryEnemies)
if entry_type = 1
	instance_create(x,y,objBestiaryBosses)