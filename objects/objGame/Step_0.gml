/// @description set cost of subweapons / timestop
if global.heartdiscount_card = 2
{//discounted subweapons
	if global.current_subweapon = 0 //no subweapon
		global.subweapon_cost = 0
	if global.current_subweapon = 1 //knife
		global.subweapon_cost = 1
	if global.current_subweapon = 2 //axe
		global.subweapon_cost = 1
	if global.current_subweapon = 3 //holy water
		global.subweapon_cost = 1
	if global.current_subweapon = 4 //bible
		global.subweapon_cost = 2
	if global.current_subweapon = 5 //boomerang
		global.subweapon_cost = 1
	if global.current_subweapon = 6 //rosary
		global.subweapon_cost = 20
	if global.current_subweapon = 7 //watch
		global.subweapon_cost = 5
	if global.current_subweapon = 8 //laurel
		global.subweapon_cost = 5
}
else
{//normal costs
	if global.current_subweapon = 0 //no subweapon
		global.subweapon_cost = 0
	if global.current_subweapon = 1 //knife
		global.subweapon_cost = 1
	if global.current_subweapon = 2 //axe
		global.subweapon_cost = 2
	if global.current_subweapon = 3 //holy water
		global.subweapon_cost = 2
	if global.current_subweapon = 4 //bible
		global.subweapon_cost = 3
	if global.current_subweapon = 5 //boomerang
		global.subweapon_cost = 2
	if global.current_subweapon = 6 //rosary
		global.subweapon_cost = 25
	if global.current_subweapon = 7 //watch
		global.subweapon_cost = 12
	if global.current_subweapon = 8 //laurel
		global.subweapon_cost = 7
}

if global.cursed_card = 2
	global.subweapon_cost *= 2

if global.timestop > 0
{
	global.timestop += -1
}