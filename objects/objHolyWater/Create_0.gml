/// @description inhert n shit
event_inherited();
i_frames = 11
damage = 2

if player_exists() = true
{
	hspeed = 2.5 * parPlayer.facing
	image_xscale = parPlayer.facing
}

vspeed = -2