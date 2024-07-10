/// @description controls
scrControls()

if kUpTap && selection > 0
{
	selection -= 1
	bitsound(sndWeaponWhip)
}

if kDownTap && selection < 2
{
	selection += 1
	bitsound(sndWeaponWhip)
}

if kCancel
{
	bitsound(sndMenuSelect)
	selection = 2
	instance_destroy()
}

if kAccept
{
	bitsound(sndMenuSelect)
	instance_destroy()
}