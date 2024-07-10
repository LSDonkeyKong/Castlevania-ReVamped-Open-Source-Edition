/// @description setup
deactivate()
bitsound(sndPickupHeart)


application_surface_enable(true);
screen_sprite = sprite_create_from_surface(application_surface, 0, 0, 400, 224, false, false, 0, 0);

list_string = 0
knife_string = "??????\n"
axe_string = "??????\n"
holywater_string = "??????\n"
bible_string = "??????\n"
boomerang_string = "??????\n"
rosary_string = "??????\n"
stopwatch_string = "??????\n"
laurel_string = "??????\n"
healingstrike_string = "??????\n"
cardiacstrike_string = "??????\n"
heartdiscount_string = "??????\n"
critical_string = "??????\n"
blazingstride_string = "??????\n"
phaseslide_string = "??????\n"
meteordash_string = "??????\n"
arsenalswap_string = "??????\n"
kinship_string = "??????\n"
cursed_string = "??????\n"

list_status = 0
knife_status = 0
axe_status = 0
holywater_status = 0
bible_status = 0
boomerang_status = 0
rosary_status = 0
stopwatch_status = 0
laurel_status = 0
healingstrike_status = 0
cardiacstrike_status = 0
heartdiscount_status = 0
critical_status = 0
blazingstride_status = 0
phaseslide_status = 0
meteordash_status = 0
arsenalswap_status = 0
kinship_status = 0
cursed_status = 0

selection = 0
turned_off = false
scrub = 0

description_string = 0

active_cards = 0
//calculate how many slots are being used
if global.knife_card = 2 active_cards += 1
if global.axe_card = 2 active_cards += 1
if global.holywater_card = 2 active_cards += 1
if global.bible_card = 2 active_cards += 1
if global.boomerang_card = 2 active_cards += 1
if global.rosary_card = 2 active_cards += 1
if global.watch_card = 2 active_cards += 1
if global.laurel_card = 2 active_cards += 1
if global.blazingsteps_card = 2 active_cards += 1
if global.heartdiscount_card = 2 active_cards += 1
if global.meteordash_card = 2 active_cards += 1
if global.healingstrike_card = 2 active_cards += 1
if global.phaseslide_card = 2 active_cards += 1
if global.cardiacstrike_card = 2 active_cards += 1
if global.arsenalswap_card = 2 active_cards += 1
if global.critical_card = 2 active_cards += 1
if global.kinship_card = 2 active_cards += 1
if global.cursed_card = 2 active_cards += 1