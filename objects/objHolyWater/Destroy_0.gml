/// @description create the holy flame
if global.holywater_card = 2
{
	with ( instance_create_depth(x,y,0,objHolyFlame) )
	{
		the_one = true
		repeat(4)
			if place_meeting(x,y,parSolid)
				y += -1
		image_xscale = other.image_xscale
	}
}
else
	instance_create(x,y,objHolyFlame)
bitsound(sndWeaponHolyWater)