/// @description spawn shit, put up gates, and go invisible
repeat(6)
	instance_create(x,y,objDebris)
instance_create(x,y,objBossMedusa)
visible = false
with( parGate ) 
	x = xstart