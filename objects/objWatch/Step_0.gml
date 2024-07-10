/// @description die when timestop is over
if global.timestop = 0
	instance_destroy()
	
if global.timestop/60 = round(global.timestop/60)
	bitsound(sndWeaponWatch)