/// @description selection
scrControls()

if kLeftTap && selection > 0
	{selection -= 4 bitsound(sndWeaponWhip)}
if kRightTap && selection < 11
	{selection += 4 bitsound(sndWeaponWhip)}
	
if selection > 11
	selection = 11
if selection < 0
	selection = 0
	
if kUpTap && selection > 0
	{selection -= 1 bitsound(sndWeaponWhip)}
if kDownTap && selection < 11
	{selection += 1 bitsound(sndWeaponWhip)}
	
if kCancel
	instance_destroy()
	
if kPause
	instance_destroy()