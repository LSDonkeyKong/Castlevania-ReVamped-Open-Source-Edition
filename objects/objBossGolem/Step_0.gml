/// @description masks
if AI = PUNCH
	mask_index = sprite_index
else
	mask_index = sprGolemMask
	
if instance_number(parPlayer) > 0
{
	if parPlayer.i_frames = 55 or parPlayer.hurting 
		global.nodamage += 1
}