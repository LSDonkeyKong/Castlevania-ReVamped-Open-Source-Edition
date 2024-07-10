/// @description spawn explosion
instance_create(x - 32 + irandom(64), y - 32 + irandom(64),objExplosion)
instance_create(x,y,objDebris)
alarm[0] = 5