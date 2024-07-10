/// @description spiciness
if ds_map_find_value(global.savedata,"spiciness") == undefined
	ds_map_replace(global.savedata,"spiciness",0)
	
/*
if ds_map_find_value(global.savedata,"spiciness") == 1  && instance_number(parPlayer) > 0 && instance_number(parEnemy) > 0
{
	spicy_timer += 1
	if spicy_timer/3 == round(spicy_timer/3) with(parEnemy) 
	{
		if object_index != objEnemyFishman && object_index != objEnemySkeledragon
			event_perform(ev_step_end,ev_step_end)
		//if variable_instance_exists(id,"xspeed") && object_index != objEnemyFishman && object_index != objEnemySkeledragon
			//scrPhysics()
		other.spicy_timer = 0
	}
}

if ds_map_find_value(global.savedata,"spiciness") == 2  && instance_number(parPlayer) > 0 && instance_number(parEnemy) > 0
{
	spicy_timer += 1
	if spicy_timer/2 == round(spicy_timer/2) with(parEnemy)
	{
		if object_index != objEnemyFishman && object_index != objEnemySkeledragon
			event_perform(ev_step_end,ev_step_end)
		//if variable_instance_exists(id,"xspeed") && object_index != objEnemyFishman && object_index != objEnemySkeledragon
			//scrPhysics()
		other.spicy_timer = 0
	}
}*/