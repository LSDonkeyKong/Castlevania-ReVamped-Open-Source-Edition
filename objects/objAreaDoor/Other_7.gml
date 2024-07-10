/// @description close and shit
if sprite_index = sprAreaDoor
	sprite_set(sprAreaDoorClose,1)
else
{
	bitsound(sndDoor)
	sprite_set(sprAreaDoor,0)
}