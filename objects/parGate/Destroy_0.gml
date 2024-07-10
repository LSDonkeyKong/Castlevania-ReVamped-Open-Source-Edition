/// @description blow up
if sprite_index = sprGate
{
	instance_create(xstart+14,ystart+14,objExplosion)
	instance_create(xstart,ystart,objGateDie)
}