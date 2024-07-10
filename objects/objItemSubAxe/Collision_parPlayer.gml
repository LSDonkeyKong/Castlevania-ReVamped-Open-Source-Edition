/// @description collect a subweapon dammit
with( instance_create_depth(other.x,other.y,0,objTossedSubweapon) )
	tossed = global.current_subweapon
	
global.current_subweapon = 2
bitsound(sndPickupUpgrade)

instance_destroy()