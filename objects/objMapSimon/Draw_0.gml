/// @description draw ya face
scrViewData()
if visiboo
{
	draw_sprite(sprite_index,image_index,x,y)
	
	if ds_map_find_value(global.savedata,"corpse map x") != undefined && ds_map_find_value(global.savedata,"corpse map y") != undefined
		if global.arsenalswap_card = 2 &&  (ds_map_find_value(global.savedata,"corpse map x") + ds_map_find_value(global.savedata,"corpse map y") > 0)
			draw_sprite(sprMapCorpse,image_index,xview + ds_map_find_value(global.savedata,"corpse map x"),yview + ds_map_find_value(global.savedata,"corpse map y"))
}