/// @description open and close with player
if place_meeting(x,y,parPlayer) && sprite_index != sprAreaDoorClose && parPlayer.facing = image_xscale && !place_meeting(x,y,parSolid)
{
	sprite_set(sprAreaDoor,1)
	if round(image_index) = 3
		bitsound(sndDoor)
	if image_index >= 4
		image_index = 4
}