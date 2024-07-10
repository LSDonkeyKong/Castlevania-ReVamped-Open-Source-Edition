/// @description turn around
//slow down slower with the boomerang card
if global.boomerang_card = 2
	hspeed += 0.038 * -image_xscale
else
	hspeed += 0.15 * -image_xscale

image_speed = 4 / ( 1 + abs(hspeed) )