/// @description restore health and prepare save
if !saved
{
	alarm[0] = 2
	global.save_x = x
	global.save_y = y
	global.save_room = room
	global.hp = global.hp_max
	saved = true
	bitsound(sndPickup1Up)
}
