/// @description controls
scrControls()

if kUpTap
{
	global.enemy_entry -= 1
	bitsound(sndWeaponWhip)
}

if kDownTap
{
	global.enemy_entry += 1
	bitsound(sndWeaponWhip)
}

if !kUp && !kDown
	scrub = 0

if kUp
{
	scrub += 1
	if scrub > 30 && scrub/5 = round(scrub/5)
		{global.enemy_entry -= 1 bitsound(sndWeaponWhip)}
}

if kDown
{
	scrub += 1
	if scrub > 30 && scrub/5 = round(scrub/5)
		{global.enemy_entry += 1 bitsound(sndWeaponWhip)}
}

if kAccept
{
	bitsound(sndMenuSelect)
	global.view_entry = true
	if instance_number(objBestiaryEntry) > 0
		objBestiaryEntry.entry_type = 0 //makes it show enemies
	instance_destroy()
}

if kCancel or kPause
{
	cancelled = true
	bitsound(sndPickupHeart)
	instance_destroy()
}

if global.enemy_entry < 0
	global.enemy_entry = 49
	
if global.enemy_entry > 49
	global.enemy_entry = 0
	
if global.boss_entry < 0
	global.boss_entry = 9
	
if global.boss_entry > 9
	global.boss_entry = 0