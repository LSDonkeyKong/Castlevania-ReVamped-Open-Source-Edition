/// @description spawn shit, put up gates, and go invisible
instance_create(parPlayer.x,parPlayer.y-32,objBossMirrorMonster)
repeat(12) instance_create(parPlayer.x,parPlayer.y-32,objDebris)
bitsound(sndGlassBreak)
visible = false
with( parGate ) 
	x = xstart