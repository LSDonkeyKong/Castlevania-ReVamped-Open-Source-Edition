/// @description re-activate + delete screen sprite
if sprite_exists(screen_sprite)
	sprite_delete(screen_sprite)
	
instance_activate_all()
bitsound(sndPickupHeart)

if selection = 0
{
	ds_map_replace(global.savedata,"spiciness",0)
}

if selection = 1
{
	ds_map_replace(global.savedata,"spiciness",1)
}

if selection = 2
{
	ds_map_replace(global.savedata,"spiciness",2)
}

