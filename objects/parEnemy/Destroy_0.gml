/// @description default explosion & drops
if hp <= 0
{
	instance_create(x,y,objExplosion)
	//roll for gold or chicken
	roll = irandom(100)
	makeme = 0
	if roll > 50
		makeme = objGold_1
	if roll > 70
		makeme = objItemPotRoast
	if roll > 82
		makeme = objGold_5
	if roll > 90
		makeme = objGold_20
	if roll > 95
		makeme = objGold_50
	if roll = 99
		makeme = objGold_100
	if makeme != 0
	{
		if global.cursed_card = 2 && makeme != objItemPotRoast
		{
			with( instance_create_depth(x,y,0,makeme) )
				xspeed = 2
			with( instance_create_depth(x,y,0,makeme) )
				xspeed = -2
		}
		instance_create(x,y,makeme)
	}
	
	{//BESTIARY
		if ds_map_find_value( global.savedata,"bestiary" + string(enemy_number) ) != undefined
			ds_map_replace( global.savedata,"bestiary" + string(enemy_number),ds_map_find_value(global.savedata,"bestiary" + string(enemy_number)) + 1 )
		else
			{ ds_map_replace( global.savedata,"bestiary" + string(enemy_number),1 ) if enemy_number != 9999 global.enemy_collection += 1 }
				
		if ds_map_find_value( global.savedata,"bestiary_boss" + string(boss_number) ) != undefined
			ds_map_replace( global.savedata,"bestiary_boss" + string(boss_number),ds_map_find_value(global.savedata,"bestiary_boss" + string(boss_number)) + 1 )
		else
			ds_map_replace( global.savedata,"bestiary_boss" + string(boss_number),1 )
	}
}