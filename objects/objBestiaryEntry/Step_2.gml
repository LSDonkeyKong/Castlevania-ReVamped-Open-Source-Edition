/// @description control the entries + deactivate
scrControls()

if kCancel && visible
	alarm[0] = 1
	
if kPause && visible
	alarm[0] = 1

if visible
{
	if kDown
		scroll += 1
	if kUp
		scroll -= 1
}

if scroll < 0
	scroll = 0
if scroll > 240
	scroll = 240

if entry_type = ENEMY && visible
{
	if kRightTap
	{
		scroll = 0
		global.enemy_entry += 1
		bitsound(sndWeaponWhip)
	}
	if kLeftTap
	{
		scroll = 0
		global.enemy_entry -= 1
		bitsound(sndWeaponWhip)
	}
	
	if !kRight && !kLeft
		scrub = 0

	if kRight
	{
		scrub += 1
		if scrub > 30 && scrub/5 = round(scrub/5)
		{
			scroll = 0
			global.enemy_entry += 1
			bitsound(sndWeaponWhip)
		}
	}

	if kLeft
	{
		scrub += 1
		if scrub > 30 && scrub/5 = round(scrub/5)
		{
			scroll = 0
			global.enemy_entry -= 1
			bitsound(sndWeaponWhip)
		}
	}
}

if entry_type = BOSS && visible
{
	if kRightTap
	{
		scroll = 0
		global.boss_entry += 1
		bitsound(sndWeaponWhip)
	}
	if kLeftTap
	{
		scroll = 0
		global.boss_entry -= 1
		bitsound(sndWeaponWhip)
	}
	
	if !kRight && !kLeft
		scrub = 0

	if kRight
	{
		scrub += 1
		if scrub > 30 && scrub/5 = round(scrub/5)
		{
			scroll = 0
			global.boss_entry += 1
			bitsound(sndWeaponWhip)
		}
	}

	if kLeft
	{
		scrub += 1
		if scrub > 30 && scrub/5 = round(scrub/5)
		{
			scroll = 0
			global.boss_entry -= 1
			bitsound(sndWeaponWhip)
		}
	}
}

if global.enemy_entry < 0
	global.enemy_entry = 49
	
if global.enemy_entry > 49
	global.enemy_entry = 0
	
if global.boss_entry < 0
	global.boss_entry = 9
	
if global.boss_entry > 9
	global.boss_entry = 0
	
if global.view_entry && !visible
{
	visible = true
	bitsound(sndPickupHeart)
	scroll = 0
	deactivate()
}