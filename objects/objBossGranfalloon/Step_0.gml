/// @description no damage calculation
if instance_number(parPlayer) > 0
{
	if parPlayer.i_frames = 55 or parPlayer.hurting 
		global.nodamage += 1
}