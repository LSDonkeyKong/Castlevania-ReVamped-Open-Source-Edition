/// @description gold and corpse run
with( instance_create_depth(x,y,0,objMoneyLostPopup) )
	bag = round(global.gold/2)
	
scrViewData()

if global.arsenalswap_card = 2
{
	ds_map_replace(global.savedata,"corpse run",round(global.gold/2))
	ds_map_replace(global.savedata,"corpse room",room)
	ds_map_replace(global.savedata,"corpse x",x)
	ds_map_replace(global.savedata,"corpse y",y)
	if instance_number(objMapSimon) > 0
	{
		ds_map_replace(global.savedata,"corpse map x",objMapSimon.x - xview)
		ds_map_replace(global.savedata,"corpse map y",objMapSimon.y - yview)
	}
	instance_create(x,y,objCorpseRun)
}
else
{
	ds_map_replace(global.savedata,"corpse run",0)
	ds_map_replace(global.savedata,"corpse room",0)
	ds_map_replace(global.savedata,"corpse x",0)
	ds_map_replace(global.savedata,"corpse y",0)
	ds_map_replace(global.savedata,"corpse map x",0)
	ds_map_replace(global.savedata,"corpse map y",0)
}

global.gold = round(global.gold/2)