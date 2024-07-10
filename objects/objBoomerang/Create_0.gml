/// @description inhert n shit
event_inherited();
damage = 6

if player_exists() = true
{
	hspeed = 6 * parPlayer.facing
	image_xscale = parPlayer.facing
	if global.boomerang_card = 2
		hspeed = 3 * parPlayer.facing
}

alarm[0] = 3
alarm[1] = 5

bitsound(sndWeaponBoomerang)