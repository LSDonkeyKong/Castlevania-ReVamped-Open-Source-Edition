/// @description controls
scrControls()

if kUpTap && selection > 0
{
	selection -= 1
	bitsound(sndWeaponWhip)
}

if kDownTap && selection < 4
{
	selection += 1
	bitsound(sndWeaponWhip)
}

if kCancel or kPause
{
	bitsound(sndMenuSelect)
	selection = 0
	alarm[0] = 1
}

if kAccept
{
	bitsound(sndMenuSelect)
	alarm[0] = 1
}