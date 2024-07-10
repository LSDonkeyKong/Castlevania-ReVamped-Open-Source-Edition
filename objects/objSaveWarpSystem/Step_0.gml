/// @description calculate saveroom number
if instance_number(objSavePoint) > 0
{
	if global.area = 0 //entrance hall
	{
		ds_map_replace(global.savedata,"entrance hall save",1)
		global.save_rank = 1
	}
	if global.area = 1 //torture lab
	{
		ds_map_replace(global.savedata,"torture lab save",1)
		global.save_rank = 3
	}
	if global.area = 2 //underground mine
	{
		ds_map_replace(global.savedata,"underground mine save",1)
		global.save_rank = 2
	}
	if global.area = 3 //castle ruins
	{
		ds_map_replace(global.savedata,"castle ruins save",1)
		global.save_rank = 4
	}
	if global.area = 4 //catacombs
	{
		ds_map_replace(global.savedata,"catacombs save",1)
		global.save_rank = 5
	}
	if global.area = 5 //castle courtyard
	{
		ds_map_replace(global.savedata,"castle courtyard save",1)
		global.save_rank = 6
	}
	if global.area = 6 //tower bridge
	{
		ds_map_replace(global.savedata,"tower bridge save",1)
		global.save_rank = 7
	}
	if global.area = 7 //toy room
	{
		ds_map_replace(global.savedata,"toy room save",1)
		global.save_rank = 8
	}
	if global.area = 8 //dungeon
	{
		ds_map_replace(global.savedata,"dungeon save",1)
		global.save_rank = 9
	}
	if global.area = 9 //marble gallery
	{
		ds_map_replace(global.savedata,"marble gallery save",1)
		global.save_rank = 10
	}
	if global.area = 10 //clock tower
	{
		ds_map_replace(global.savedata,"clock tower save",1)
		global.save_rank = 11
	}
}