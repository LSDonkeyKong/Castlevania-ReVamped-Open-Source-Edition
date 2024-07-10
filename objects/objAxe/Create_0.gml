/// @description inhert n shit
event_inherited();
damage = 7

if player_exists() = true
{
	hspeed = 2 * parPlayer.facing
	image_xscale = parPlayer.facing
}

if global.axe_card = 2
	sprite_index = sprSubAxeCard

vspeed = -6

bitsound(sndWeaponAxe)