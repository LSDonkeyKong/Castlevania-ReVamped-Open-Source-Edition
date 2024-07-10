/// @description reject selection or leave menu
if kAccept//play brp brp if you don't have the card
{
	if global.knife_card = 0 && selection = 0
		bitsound(sndMenuReject)
	if global.axe_card = 0 && selection = 1
		bitsound(sndMenuReject)
	if global.holywater_card = 0 && selection = 2
		bitsound(sndMenuReject)
	if global.bible_card = 0 && selection = 3
		bitsound(sndMenuReject)
	if global.boomerang_card = 0 && selection = 4
		bitsound(sndMenuReject)
	if global.rosary_card = 0 && selection = 5
		bitsound(sndMenuReject)
	if global.watch_card = 0 && selection = 6
		bitsound(sndMenuReject)
	if global.laurel_card = 0 && selection = 7
		bitsound(sndMenuReject)
	if global.blazingsteps_card = 0 && selection = 12
		bitsound(sndMenuReject)
	if global.heartdiscount_card = 0 && selection = 10
		bitsound(sndMenuReject)
	if global.meteordash_card = 0 && selection = 14
		bitsound(sndMenuReject)
	if global.healingstrike_card = 0 && selection = 8
		bitsound(sndMenuReject)
	if global.phaseslide_card = 0 && selection = 13
		bitsound(sndMenuReject)
	if global.cardiacstrike_card = 0 && selection = 9
		bitsound(sndMenuReject)
	if global.arsenalswap_card = 0 && selection = 15
		bitsound(sndMenuReject)
	if global.critical_card = 0 && selection = 11
		bitsound(sndMenuReject)
	if global.kinship_card = 0 && selection = 16
		bitsound(sndMenuReject)
	if global.cursed_card = 0 && selection = 17
		bitsound(sndMenuReject)
}

if kAccept && active_cards >= 3//play brp brp if you are maxed out with cards
{
	if global.knife_card = 1 && selection = 0
		bitsound(sndMenuReject)
	if global.axe_card = 1 && selection = 1
		bitsound(sndMenuReject)
	if global.holywater_card = 1 && selection = 2
		bitsound(sndMenuReject)
	if global.bible_card = 1 && selection = 3
		bitsound(sndMenuReject)
	if global.boomerang_card = 1 && selection = 4
		bitsound(sndMenuReject)
	if global.rosary_card = 1 && selection = 5
		bitsound(sndMenuReject)
	if global.watch_card = 1 && selection = 6
		bitsound(sndMenuReject)
	if global.laurel_card = 1 && selection = 7
		bitsound(sndMenuReject)
	if global.blazingsteps_card = 1 && selection = 12
		bitsound(sndMenuReject)
	if global.heartdiscount_card = 1 && selection = 10
		bitsound(sndMenuReject)
	if global.meteordash_card = 1 && selection = 14
		bitsound(sndMenuReject)
	if global.healingstrike_card = 1 && selection = 8
		bitsound(sndMenuReject)
	if global.phaseslide_card = 1 && selection = 13
		bitsound(sndMenuReject)
	if global.cardiacstrike_card = 1 && selection = 9
		bitsound(sndMenuReject)
	if global.arsenalswap_card = 1 && selection = 15
		bitsound(sndMenuReject)
	if global.critical_card = 1 && selection = 11
		bitsound(sndMenuReject)
	if global.kinship_card = 1 && selection = 16
		bitsound(sndMenuReject)
	if global.cursed_card = 1 && selection = 17
		bitsound(sndMenuReject)
}

if kCancel or kPause
	alarm[0] = 1