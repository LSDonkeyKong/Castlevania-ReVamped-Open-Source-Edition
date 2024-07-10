/// @description healing/cardiac strike cards
if !struck
{
	//healing strike (every 5 hits)
	if global.healingstrike_card = 2
		global.healing_strike_count += 1
	if global.healing_strike_count >= 6
	{
		global.hp += 1
		global.healing_strike_count = 0
		bitsound(sndPickupHealth)
	}
	//cardiac strike (every hit)
	if global.cardiacstrike_card = 2
	{
		instance_create(other.x,other.y,objItemHeart)
	}
	
	struck = true
}