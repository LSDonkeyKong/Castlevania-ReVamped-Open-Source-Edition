/// @description no selecting!!
scrControls()
if kUpTap && selection > 0
	{selection -= 9 bitsound(sndWeaponWhip)}
if kDownTap && selection < 17
	{selection += 9 bitsound(sndWeaponWhip)}
	
if selection > 17
	selection = 17
if selection < 0
	selection = 0
	
if kLeftTap && selection > 0
	{selection -= 1 bitsound(sndWeaponWhip)}
if kRightTap && selection < 17
	{selection += 1 bitsound(sndWeaponWhip)}


if kAccept //brp brp
	bitsound(sndMenuReject)