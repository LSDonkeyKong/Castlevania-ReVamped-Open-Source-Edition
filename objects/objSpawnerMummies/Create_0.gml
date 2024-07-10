/// @description setup and ds map
eyesight = 96
active = false

with( parGate )
	x = -64

delete_if_collected()

image_xscale = 1
image_speed = 0

//set the mummy order # in room create code
mummy_order = 0
global.order_mummies = 0

depth = 30

alarm[2] = 1

global.nodamage = 0