/// @description spawn explosion
repeat(4) instance_create(x - 64 + irandom(128), y - 64 + irandom(128),objExplosion)
alarm[0] = 5