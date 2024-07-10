/// @description select & purchase cards
scrControls()

if kUpTap && selection > 0
	{selection -= 1 bitsound(sndWeaponWhip)}
if kDownTap && selection < 18
	{selection += 1 bitsound(sndWeaponWhip)}
	
if !kUp && !kDown
	scrub = 0

if kUp
{
	scrub += 1
	if scrub > 30 && scrub/5 = round(scrub/5) && selection > 0
		{selection -= 1 bitsound(sndWeaponWhip)}
}

if kDown
{
	scrub += 1
	if scrub > 30 && scrub/5 = round(scrub/5) && selection < 18
		{selection += 1 bitsound(sndWeaponWhip)}
}

if kAccept //not enough gold
{
	if selection = 0 && global.gold < 25
		bitsound(sndMenuReject)
	if global.knife_card = 0 && selection = 1 && global.gold < 500
		bitsound(sndMenuReject)
	if global.axe_card = 0 && selection = 2 && global.gold < 500
		bitsound(sndMenuReject)
	if global.holywater_card = 0 && selection = 3 && global.gold < 500
		bitsound(sndMenuReject)
	if global.bible_card = 0 && selection = 4 && global.gold < 500
		bitsound(sndMenuReject)
	if global.boomerang_card = 0 && selection = 5 && global.gold < 500
		bitsound(sndMenuReject)
	if global.rosary_card = 0 && selection = 6 && global.gold < 1000
		bitsound(sndMenuReject)
	if global.watch_card = 0 && selection = 7 && global.gold < 1000
		bitsound(sndMenuReject)
	if global.laurel_card = 0 && selection = 8 && global.gold < 1000
		bitsound(sndMenuReject)
	if global.blazingsteps_card = 0 && selection = 13 && global.gold < 1000
		bitsound(sndMenuReject)
	if global.heartdiscount_card = 0 && selection = 11 && global.gold < 750
		bitsound(sndMenuReject)
	if global.meteordash_card = 0 && selection = 15 && global.gold < 1000
		bitsound(sndMenuReject)
	if global.healingstrike_card = 0 && selection = 9 && global.gold < 750
		bitsound(sndMenuReject)
	if global.phaseslide_card = 0 && selection = 14 && global.gold < 1500
		bitsound(sndMenuReject)
	if global.cardiacstrike_card = 0 && selection = 10 && global.gold < 750
		bitsound(sndMenuReject)
	if global.arsenalswap_card = 0 && selection = 16 && global.gold < 125
		bitsound(sndMenuReject)
	if global.critical_card = 0 && selection = 12 && global.gold < 250
		bitsound(sndMenuReject)
	if global.kinship_card = 0 && selection = 17 && global.gold < 2000
		bitsound(sndMenuReject)
	if global.cursed_card = 0 && selection = 18 && global.gold < 250
		bitsound(sndMenuReject)
}

if kAccept //already have the card or full hearts
{
	if selection = 0 && global.hearts >= global.hearts_max
		bitsound(sndMenuReject)
	if global.knife_card > 0 && selection = 1
		bitsound(sndMenuReject)
	if global.axe_card > 0 && selection = 2
		bitsound(sndMenuReject)
	if global.holywater_card > 0 && selection = 3 
		bitsound(sndMenuReject)
	if global.bible_card > 0 && selection = 4
		bitsound(sndMenuReject)
	if global.boomerang_card > 0 && selection = 5 
		bitsound(sndMenuReject)
	if global.rosary_card > 0 && selection = 6
		bitsound(sndMenuReject)
	if global.watch_card > 0 && selection = 7
		bitsound(sndMenuReject)
	if global.laurel_card > 0 && selection = 8
		bitsound(sndMenuReject)
	if global.blazingsteps_card > 0 && selection = 13 
		bitsound(sndMenuReject)
	if global.heartdiscount_card > 0 && selection = 11 
		bitsound(sndMenuReject)
	if global.meteordash_card > 0 && selection = 15 
		bitsound(sndMenuReject)
	if global.healingstrike_card > 0 && selection = 9
		bitsound(sndMenuReject)
	if global.phaseslide_card > 0 && selection = 12
		bitsound(sndMenuReject)
	if global.cardiacstrike_card > 0 && selection = 10
		bitsound(sndMenuReject)
	if global.arsenalswap_card > 0 && selection = 16
		bitsound(sndMenuReject)
	if global.critical_card > 0 && selection = 12
		bitsound(sndMenuReject)
	if global.kinship_card > 0 && selection = 17
		bitsound(sndMenuReject)
	if global.cursed_card > 0 && selection = 18
		bitsound(sndMenuReject)
}

if kAccept //buy cards or hearts
{
	if selection = 0 && global.hearts < global.hearts_max && global.gold >= 25
		{global.hearts = global.hearts_max global.gold -= 25 bitsound(sndPickupHeartSmall)}
	if global.knife_card = 0 && selection = 1 && global.gold >= 500
		{global.knife_card = 1 global.gold -= 500 bitsound(sndMenuSelect) global.collection += 1}
	if global.axe_card = 0 && selection = 2 && global.gold >= 500
		{global.axe_card = 1 global.gold -= 500 bitsound(sndMenuSelect) global.collection += 1}
	if global.holywater_card = 0 && selection = 3 && global.gold >= 500
		{global.holywater_card = 1 global.gold -= 500 bitsound(sndMenuSelect) global.collection += 1}
	if global.bible_card = 0 && selection = 4 && global.gold >= 500
		{global.bible_card = 1 global.gold -= 500 bitsound(sndMenuSelect) global.collection += 1}
	if global.boomerang_card = 0 && selection = 5 && global.gold >= 500
		{global.boomerang_card = 1 global.gold -= 500 bitsound(sndMenuSelect) global.collection += 1}
	if global.rosary_card = 0 && selection = 6 && global.gold >= 1000
		{global.rosary_card = 1 global.gold -= 1000 bitsound(sndMenuSelect) global.collection += 1}
	if global.watch_card = 0 && selection = 7 && global.gold >= 1000
		{global.watch_card = 1 global.gold -= 1000 bitsound(sndMenuSelect) global.collection += 1}
	if global.laurel_card = 0 && selection = 8 && global.gold >= 1000
		{global.laurel_card = 1 global.gold -= 1000 bitsound(sndMenuSelect) global.collection += 1}
	if global.blazingsteps_card = 0 && selection = 13 && global.gold >= 1000
		{global.blazingsteps_card = 1 global.gold -= 1000 bitsound(sndMenuSelect) global.collection += 1}
	if global.heartdiscount_card = 0 && selection = 11 && global.gold >= 750
		{global.heartdiscount_card = 1 global.gold -= 750 bitsound(sndMenuSelect) global.collection += 1}
	if global.meteordash_card = 0 && selection = 15 && global.gold >= 1000
		{global.meteordash_card = 1 global.gold -= 1000 bitsound(sndMenuSelect) global.collection += 1}
	if global.healingstrike_card = 0 && selection = 9 && global.gold >= 750
		{global.healingstrike_card = 1 global.gold -= 750 bitsound(sndMenuSelect) global.collection += 1}
	if global.phaseslide_card = 0 && selection = 14 && global.gold >= 1500
		{global.phaseslide_card = 1 global.gold -= 1500 bitsound(sndMenuSelect) global.collection += 1}
	if global.cardiacstrike_card = 0 && selection = 10 && global.gold >= 750
		{global.cardiacstrike_card = 1 global.gold -= 750 bitsound(sndMenuSelect) global.collection += 1}
	if global.arsenalswap_card = 0 && selection = 16 && global.gold >= 125
		{global.arsenalswap_card = 1 global.gold -= 125 bitsound(sndMenuSelect) global.collection += 1}
	if global.critical_card = 0 && selection = 12 && global.gold >= 250
		{global.critical_card = 1 global.gold -= 250 bitsound(sndMenuSelect) global.collection += 1}
	if global.kinship_card = 0 && selection = 17 && global.gold >= 2000
		{global.kinship_card = 1 global.gold -= 2000 bitsound(sndMenuSelect) global.collection += 1}
	if global.cursed_card = 0 && selection = 18 && global.gold >= 250
		{global.cursed_card = 1 global.gold -= 250 bitsound(sndMenuSelect) global.collection += 1}
}