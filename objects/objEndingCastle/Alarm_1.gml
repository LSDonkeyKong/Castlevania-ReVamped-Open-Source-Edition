/// @description explosions
if !done
{
	repeat(3)
		instance_create(x - 24 + irandom(48), y - 24 + irandom(48),objExplosion)
	bitsound(sndCrumble)
}
	
alarm[1] = 10