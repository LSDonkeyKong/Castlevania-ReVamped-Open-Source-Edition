/// @description select cards
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

if kAccept //turn cards off
{
	if global.knife_card = 2 && selection = 0
		{global.knife_card = 1 active_cards -= 1 bitsound(sndMenuSelect) turned_off = true}
	if global.axe_card = 2 && selection = 1
		{global.axe_card = 1 active_cards -= 1 bitsound(sndMenuSelect) turned_off = true}
	if global.holywater_card = 2 && selection = 2
		{global.holywater_card = 1 active_cards -= 1 bitsound(sndMenuSelect) turned_off = true}
	if global.bible_card = 2 && selection = 3
		{global.bible_card = 1 active_cards -= 1 bitsound(sndMenuSelect) turned_off = true}
	if global.boomerang_card = 2 && selection = 4
		{global.boomerang_card = 1 active_cards -= 1 bitsound(sndMenuSelect) turned_off = true}
	if global.rosary_card = 2 && selection = 5
		{global.rosary_card = 1 active_cards -= 1 bitsound(sndMenuSelect) turned_off = true}
	if global.watch_card = 2 && selection = 6
		{global.watch_card = 1 active_cards -= 1 bitsound(sndMenuSelect) turned_off = true}
	if global.laurel_card = 2 && selection = 7
		{global.laurel_card = 1 active_cards -= 1 bitsound(sndMenuSelect) turned_off = true}
	if global.blazingsteps_card = 2 && selection = 12
		{global.blazingsteps_card = 1 active_cards -= 1 bitsound(sndMenuSelect) turned_off = true}
	if global.heartdiscount_card = 2 && selection = 10
		{global.heartdiscount_card = 1 active_cards -= 1 bitsound(sndMenuSelect) turned_off = true}
	if global.meteordash_card = 2 && selection = 14
		{global.meteordash_card = 1 active_cards -= 1 bitsound(sndMenuSelect) turned_off = true}
	if global.healingstrike_card = 2 && selection = 8
		{global.healingstrike_card = 1 active_cards -= 1 bitsound(sndMenuSelect) turned_off = true}
	if global.phaseslide_card = 2 && selection = 13
		{global.phaseslide_card = 1 active_cards -= 1 bitsound(sndMenuSelect) turned_off = true}
	if global.cardiacstrike_card = 2 && selection = 9
		{global.cardiacstrike_card = 1 active_cards -= 1 bitsound(sndMenuSelect) turned_off = true}
	if global.arsenalswap_card = 2 && selection = 15
		{global.arsenalswap_card = 1 active_cards -= 1 bitsound(sndMenuSelect) turned_off = true}
	if global.critical_card = 2 && selection = 11
		{global.critical_card = 1 active_cards -= 1 bitsound(sndMenuSelect) turned_off = true}
	if global.kinship_card = 2 && selection = 16
		{global.kinship_card = 1 active_cards -= 1 bitsound(sndMenuSelect) turned_off = true}
	if global.cursed_card = 2 && selection = 17
		{global.cursed_card = 1 active_cards -= 1 bitsound(sndMenuSelect) turned_off = true}
}

if kAccept && !turned_off //turn cards on if there's enough slots
{
	if global.knife_card = 1 && active_cards < 3 && selection = 0
		{global.knife_card = 2 active_cards += 1 bitsound(sndMenuSelect)}
	if global.axe_card = 1 && active_cards < 3 && selection = 1
		{global.axe_card = 2 active_cards += 1 bitsound(sndMenuSelect)}
	if global.holywater_card = 1 && active_cards < 3 && selection = 2
		{global.holywater_card = 2 active_cards += 1 bitsound(sndMenuSelect)}
	if global.bible_card = 1 && active_cards < 3 && selection = 3
		{global.bible_card = 2 active_cards += 1 bitsound(sndMenuSelect)}
	if global.boomerang_card = 1 && active_cards < 3 && selection = 4
		{global.boomerang_card = 2 active_cards += 1 bitsound(sndMenuSelect)}
	if global.rosary_card = 1 && active_cards < 3 && selection = 5
		{global.rosary_card = 2 active_cards += 1 bitsound(sndMenuSelect)}
	if global.watch_card = 1 && active_cards < 3 && selection = 6
		{global.watch_card = 2 active_cards += 1 bitsound(sndMenuSelect)}
	if global.laurel_card = 1 && active_cards < 3 && selection = 7
		{global.laurel_card = 2 active_cards += 1 bitsound(sndMenuSelect)}
	if global.blazingsteps_card = 1 && active_cards < 3 && selection = 12
		{global.blazingsteps_card = 2 active_cards += 1 bitsound(sndMenuSelect)}
	if global.heartdiscount_card = 1 && active_cards < 3 && selection = 10
		{global.heartdiscount_card = 2 active_cards += 1 bitsound(sndMenuSelect)}
	if global.meteordash_card = 1 && active_cards < 3 && selection = 14
		{global.meteordash_card = 2 active_cards += 1 bitsound(sndMenuSelect)}
	if global.healingstrike_card = 1 && active_cards < 3 && selection = 8
		{global.healingstrike_card = 2 active_cards += 1 bitsound(sndMenuSelect)}
	if global.phaseslide_card = 1 && active_cards < 3 && selection = 13
		{global.phaseslide_card = 2 active_cards += 1 bitsound(sndMenuSelect)}
	if global.cardiacstrike_card = 1 && active_cards < 3 && selection = 9
		{global.cardiacstrike_card = 2 active_cards += 1 bitsound(sndMenuSelect)}
	if global.arsenalswap_card = 1 && active_cards < 3 && selection = 15
		{global.arsenalswap_card = 2 active_cards += 1 bitsound(sndMenuSelect)}
	if global.critical_card = 1 && active_cards < 3 && selection = 11
		{global.critical_card = 2 active_cards += 1 bitsound(sndMenuSelect)}
	if global.kinship_card = 1 && active_cards < 3 && selection = 16
		{global.kinship_card = 2 active_cards += 1 bitsound(sndMenuSelect)}
	if global.cursed_card = 1 && active_cards < 3 && selection = 17
		{global.cursed_card = 2 active_cards += 1 bitsound(sndMenuSelect)}
}

if turned_off
	turned_off = false