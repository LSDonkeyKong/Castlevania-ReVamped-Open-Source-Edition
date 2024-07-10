/// @description special shit
if hp <= 0
{
	global.gold += ds_map_find_value(global.savedata,"corpse run")
	with( instance_create_depth(x,y,0,objMoneyPopup) )
		bag = ds_map_find_value(global.savedata,"corpse run")
	instance_create(x,y,objExplosion)
	bitsound(sndPickupMoney)
	
	ds_map_replace(global.savedata,"corpse run",0)
	ds_map_replace(global.savedata,"corpse map x",0)
	ds_map_replace(global.savedata,"corpse map y",0)
}
