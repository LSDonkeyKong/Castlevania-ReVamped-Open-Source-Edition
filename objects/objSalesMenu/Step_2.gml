/// @description strings!
//names, if you have them
#region//CARD NAMES
hearts_string = "Heart Refill\n"
if global.knife_card > -5 
	knife_string = "Knife Card\n"
if global.axe_card > -5 
	axe_string = "Axe Card\n"
if global.holywater_card > -5 
	holywater_string = "Holy Water Card\n"
if global.bible_card > -5 
	bible_string = "Bible Card\n"
if global.boomerang_card > -5 
	boomerang_string = "Boomerang Card\n"
if global.rosary_card > -5 
	rosary_string = "Rosary Card\n"
if global.watch_card > -5 
	stopwatch_string = "Stopwatch Card\n"
if global.laurel_card > -5 
	laurel_string = "Laurel Card\n"
if global.healingstrike_card > -5 
	healingstrike_string = "Healing Strike Card\n"
if global.cardiacstrike_card > -5 
	cardiacstrike_string = "Cardiac Strike Card\n"
if global.heartdiscount_card > -5 
	heartdiscount_string = "Heart Discount Card\n"
if global.critical_card > -5 
	critical_string = "Critical Card\n"
if global.blazingsteps_card > -5 
	blazingstride_string = "Blazing Stride Card\n"
if global.phaseslide_card > -5 
	phaseslide_string = "Heavy Boots Card\n"
if global.meteordash_card > -5 
	meteordash_string = "Meteor Dash Card\n"
if global.arsenalswap_card > -5 
	arsenalswap_string = "Corpse Run Card\n"
if global.kinship_card > -5 
	kinship_string = "Kinship Card\n"
if global.cursed_card > -5 
	cursed_string = "Cursed Card\n"
#endregion
list_string = hearts_string+knife_string+axe_string+holywater_string+bible_string+boomerang_string+rosary_string+stopwatch_string+laurel_string+healingstrike_string+cardiacstrike_string+heartdiscount_string+critical_string+blazingstride_string+phaseslide_string+meteordash_string+arsenalswap_string+kinship_string+cursed_string

#region//CARD STATUS SOLD OUT
if global.knife_card > 0 
	knife_status = "-SOLD OUT-\n"
if global.axe_card > 0 
	axe_status = "-SOLD OUT-\n"
if global.holywater_card > 0 
	holywater_status = "-SOLD OUT-\n"
if global.bible_card > 0 
	bible_status = "-SOLD OUT-\n"
if global.boomerang_card > 0 
	boomerang_status = "-SOLD OUT-\n"
if global.rosary_card > 0 
	rosary_status = "-SOLD OUT-\n"
if global.watch_card > 0 
	stopwatch_status = "-SOLD OUT-\n"
if global.laurel_card > 0 
	laurel_status = "-SOLD OUT-\n"
if global.healingstrike_card > 0 
	healingstrike_status = "-SOLD OUT-\n"
if global.cardiacstrike_card > 0 
	cardiacstrike_status = "-SOLD OUT-\n"
if global.heartdiscount_card > 0 
	heartdiscount_status = "-SOLD OUT-\n"
if global.critical_card > 0 
	critical_status = "-SOLD OUT-\n"
if global.blazingsteps_card > 0 
	blazingstride_status = "-SOLD OUT-\n"
if global.phaseslide_card > 0 
	phaseslide_status = "-SOLD OUT-\n"
if global.meteordash_card > 0 
	meteordash_status = "-SOLD OUT-\n"
if global.arsenalswap_card > 0 
	arsenalswap_status = "-SOLD OUT-\n"
if global.kinship_card > 0 
	kinship_status = "-SOLD OUT-\n"
if global.cursed_card > 0 
	cursed_status = "-SOLD OUT-\n"
#endregion

#region//CARD PRICE
hearts_status = "$25 \n"
if global.knife_card = 0 
	knife_status = "$500 \n"
if global.axe_card = 0 
	axe_status = "$500 \n"
if global.holywater_card = 0 
	holywater_status = "$500 \n"
if global.bible_card = 0 
	bible_status = "$500 \n"
if global.boomerang_card = 0 
	boomerang_status = "$500 \n"
if global.rosary_card = 0 
	rosary_status = "$1000 \n"
if global.watch_card = 0 
	stopwatch_status = "$1000 \n"
if global.laurel_card = 0 
	laurel_status = "$1000 \n"
if global.healingstrike_card = 0 
	healingstrike_status = "$750 \n"
if global.cardiacstrike_card = 0 
	cardiacstrike_status = "$750 \n"
if global.heartdiscount_card = 0 
	heartdiscount_status = "$750 \n"
if global.critical_card = 0 
	critical_status = "$250 \n"
if global.blazingsteps_card = 0 
	blazingstride_status = "$1000 \n"
if global.phaseslide_card = 0 
	phaseslide_status = "$1500 \n"
if global.meteordash_card = 0 
	meteordash_status = "$1000 \n"
if global.arsenalswap_card = 0 
	arsenalswap_status = "$125 \n"
if global.kinship_card = 0 
	kinship_status = "$2000 \n"
if global.cursed_card = 0 
	cursed_status = "$250 \n"
#endregion

list_status = hearts_status+knife_status+axe_status+holywater_status+bible_status+boomerang_status+rosary_status+stopwatch_status+laurel_status+healingstrike_status+cardiacstrike_status+heartdiscount_status+critical_status+blazingstride_status+phaseslide_status+meteordash_status+arsenalswap_status+kinship_status+cursed_status+"\nGold: $"+string(global.gold)

shop_messages()
if selection = 0
	description_string = "Heart Refill\nRefills hearts to maximum amount."
if selection = 1
	description_string = knife_description
if selection = 2
	description_string = axe_description
if selection = 3
	description_string = holywater_description
if selection = 4
	description_string = bible_description
if selection = 5
	description_string = boomerang_description
if selection = 6
	description_string = rosary_description
if selection = 7
	description_string = stopwatch_description
if selection = 8
	description_string = laurel_description
if selection = 9
	description_string = healingstrike_description
if selection = 10
	description_string = cardiacstrike_description
if selection = 11
	description_string = heartdiscount_description
if selection = 12
	description_string = critical_description
if selection = 13
	description_string = blazingstride_description
if selection = 14
	description_string = phaseslide_description
if selection = 15
	description_string = meteordash_description
if selection = 16
	description_string = arsenalswap_description
if selection = 17
	description_string = kinship_description
if selection = 18
	description_string = cursed_description