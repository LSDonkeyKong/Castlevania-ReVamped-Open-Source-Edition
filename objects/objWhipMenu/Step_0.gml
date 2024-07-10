/// @description choose whip
scrControls()
if !selected
{
	if kSwap or kCancel
	{
		if global.vibration input_vibrate_constant(0.5,0,5)
		bitsound(sndWeaponWhip)
		selected = true alarm[0] = 60
	}

	if kUpTap && global.current_whip > 1
	{
		bitsound(sndMenuSelect)
		global.current_whip = 0
		if global.morningstar
			global.current_whip = 1
		//if global.arsenalswap_card = 2
			//global.whip_multiplier = 2
		selected = true alarm[0] = 60
	}
	else if kUpTap
		bitsound(sndMenuReject)

	if kRightTap && global.flame_whip && global.current_whip != 2
	{
		bitsound(sndMenuSelect)
		global.current_whip = 2
		//if global.arsenalswap_card = 2
			//global.whip_multiplier = 2
		selected = true alarm[0] = 60
	}
	else if kRightTap
		bitsound(sndMenuReject)

	if kDownTap && global.ice_whip && global.current_whip != 3
	{
		bitsound(sndMenuSelect)
		global.current_whip = 3
		//if global.arsenalswap_card = 2
			//global.whip_multiplier = 2
		selected = true alarm[0] = 60
	}
	else if kDownTap
		bitsound(sndMenuReject)

	if kLeftTap && global.thunder_whip && global.current_whip != 4
	{
		bitsound(sndMenuSelect)
		global.current_whip = 4
		//if global.arsenalswap_card = 2
			//global.whip_multiplier = 2
		selected = true alarm[0] = 60
	}
	else if kLeftTap
		bitsound(sndMenuReject)
}

/*
if global.current_whip = 1 && !global.morningstar
	global.current_whip += 1
if global.current_whip = 2 && !global.flame_whip
	global.current_whip += 1
if global.current_whip = 3 && !global.ice_whip
	global.current_whip += 1
if global.current_whip = 4 && !global.thunder_whip
	global.current_whip += 1
if global.current_whip >= 5
	global.current_whip = 0
if global.morningstar && global.current_whip = 0
	global.current_whip = 1
*/