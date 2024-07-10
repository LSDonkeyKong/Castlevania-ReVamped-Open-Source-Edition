/// @description inhert n shit
event_inherited();
damage = 3
i_frames = 2

if player_exists() = true
{
	hspeed = 9 * parPlayer.facing
	image_xscale = parPlayer.facing
	//KNIFE CARD
	if global.knife_card = 2 && y = parPlayer.y + parPlayer.throw_y 
	{
		with( instance_create_depth(x,y+1,0,objKnife) )
			vspeed = 1.5
		with( instance_create_depth(x,y-1,0,objKnife) )
			vspeed = -1.5
	}
	//KNIFE CARD END
}

bitsound(sndWeaponKnife)