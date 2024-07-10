function scrSaveDataGetKey()
{
	return room_get_name(room)+object_get_name(object_index)+string(x)+string(y);
}

function delete_if_collected()
{
	key = scrSaveDataGetKey();
	var _savedata = ds_map_find_value(global.savedata,key);
	
	if(!is_undefined(_savedata) && _savedata==true) && place_meeting(x,y,parSolid)
		instance_create(x,y,objItemPotRoast)
	
	if(!is_undefined(_savedata) && _savedata==true)
		instance_destroy()
}

function collected()
{
	ds_map_replace(global.savedata,key,true)
}