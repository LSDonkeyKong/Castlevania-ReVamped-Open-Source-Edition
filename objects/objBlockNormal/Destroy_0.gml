/// @description destroy tile and make debris
destroy_tile()
if make_debris
	repeat(4)
		instance_create(x+8,y+8,objDebris)