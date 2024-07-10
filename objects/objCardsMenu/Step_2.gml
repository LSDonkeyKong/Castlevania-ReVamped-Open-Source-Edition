/// @description strings!
//CARD NAMES OR ??????
card_messages()

list_string = knife_string+axe_string+holywater_string+bible_string+boomerang_string+rosary_string+stopwatch_string+laurel_string+healingstrike_string+cardiacstrike_string+heartdiscount_string+critical_string+blazingstride_string+phaseslide_string+meteordash_string+arsenalswap_string+kinship_string+cursed_string
+"\nActive Cards: " + string(active_cards) + "/3"

active_string = "Active Cards: " + string(active_cards) + "/3"
if selection = 0
	card_string = knife_string
if selection = 1
	card_string = axe_string
if selection = 2
	card_string = holywater_string
if selection = 3
	card_string = bible_string
if selection = 4
	card_string = boomerang_string
if selection = 5
	card_string = rosary_string
if selection = 6
	card_string = stopwatch_string
if selection = 7
	card_string = laurel_string
if selection = 8
	card_string = healingstrike_string
if selection = 9
	card_string = cardiacstrike_string
if selection = 10
	card_string = heartdiscount_string
if selection = 11
	card_string = critical_string
if selection = 12
	card_string = blazingstride_string
if selection = 13
	card_string = phaseslide_string
if selection = 14
	card_string = meteordash_string
if selection = 15
	card_string = arsenalswap_string
if selection = 16
	card_string = kinship_string
if selection = 17
	card_string = cursed_string

#region//CARD STATUS ON
if global.knife_card = 2 
	knife_status = 0
if global.axe_card = 2 
	axe_status = 1
if global.holywater_card = 2 
	holywater_status = 2
if global.bible_card = 2 
	bible_status = 3
if global.boomerang_card = 2 
	boomerang_status = 4
if global.rosary_card = 2 
	rosary_status = 5
if global.watch_card = 2 
	stopwatch_status = 6
if global.laurel_card = 2 
	laurel_status = 7
if global.healingstrike_card = 2 
	healingstrike_status = 8
if global.cardiacstrike_card = 2 
	cardiacstrike_status = 9
if global.heartdiscount_card = 2 
	heartdiscount_status = 10
if global.critical_card = 2 
	critical_status = 11
if global.blazingsteps_card = 2 
	blazingstride_status = 12
if global.phaseslide_card = 2 
	phaseslide_status = 13
if global.meteordash_card = 2 
	meteordash_status = 14
if global.arsenalswap_card = 2 
	arsenalswap_status = 15
if global.kinship_card = 2 
	kinship_status = 16
if global.cursed_card = 2 
	cursed_status = 17
#endregion

#region//CARD STATUS OFF
if global.knife_card < 2 
	knife_status = 19
if global.axe_card < 2 
	axe_status = 19
if global.holywater_card < 2 
	holywater_status = 19
if global.bible_card < 2 
	bible_status = 19
if global.boomerang_card < 2 
	boomerang_status = 19
if global.rosary_card < 2 
	rosary_status = 19
if global.watch_card < 2 
	stopwatch_status = 19
if global.laurel_card < 2 
	laurel_status = 19
if global.healingstrike_card < 2 
	healingstrike_status = 19
if global.cardiacstrike_card < 2 
	cardiacstrike_status = 19
if global.heartdiscount_card < 2 
	heartdiscount_status = 19
if global.critical_card < 2 
	critical_status = 19
if global.blazingsteps_card < 2 
	blazingstride_status = 19
if global.phaseslide_card < 2 
	phaseslide_status = 19
if global.meteordash_card < 2 
	meteordash_status = 19
if global.arsenalswap_card < 2 
	arsenalswap_status = 19
if global.kinship_card < 2 
	kinship_status = 19
if global.cursed_card < 2 
	cursed_status = 19
#endregion

#region//CARD STATUS NO HAVE
if global.knife_card = 0 
	knife_status = 18
if global.axe_card = 0 
	axe_status = 18
if global.holywater_card = 0 
	holywater_status = 18
if global.bible_card = 0 
	bible_status = 18
if global.boomerang_card = 0 
	boomerang_status = 18
if global.rosary_card = 0 
	rosary_status = 18
if global.watch_card = 0 
	stopwatch_status = 18
if global.laurel_card = 0 
	laurel_status = 18
if global.healingstrike_card = 0 
	healingstrike_status = 18
if global.cardiacstrike_card = 0 
	cardiacstrike_status = 18
if global.heartdiscount_card = 0 
	heartdiscount_status = 18
if global.critical_card = 0 
	critical_status = 18
if global.blazingsteps_card = 0 
	blazingstride_status = 18
if global.phaseslide_card = 0 
	phaseslide_status = 18
if global.meteordash_card = 0 
	meteordash_status = 18
if global.arsenalswap_card = 0 
	arsenalswap_status = 18
if global.kinship_card = 0 
	kinship_status = 18
if global.cursed_card = 0 
	cursed_status = 18
#endregion

list_status = knife_status+axe_status+holywater_status+bible_status+boomerang_status+rosary_status+stopwatch_status+laurel_status+healingstrike_status+cardiacstrike_status+heartdiscount_status+critical_status+blazingstride_status+phaseslide_status+meteordash_status+arsenalswap_status+kinship_status+cursed_status
