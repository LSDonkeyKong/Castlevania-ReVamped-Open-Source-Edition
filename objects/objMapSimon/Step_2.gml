/// @description ye ol stuff
{//calculate where simon is on an 8x8 grid
	scrViewData()
	if instance_number(parPlayer) > 0
	{
		grid_x = floor(parPlayer.x / 400) * 6
		grid_y = floor(parPlayer.y / 224) * 6
		//calculate a coordiante-only version for the DS map
		dsgrid_x = floor(parPlayer.x / 400) 
		dsgrid_y = floor(parPlayer.y / 224) 
	}

	if grid_x < 0
		grid_x = 0
	if grid_x > (room_width/400) * 6
		grid_x = (room_width/400) * 6
	//fixed map vars:
	if dsgrid_x < 0
		dsgrid_x = 0
	if dsgrid_x > (room_width/400)
		dsgrid_x = (room_width/400)

	if grid_y < 0
		grid_y = 0
	if grid_y > (room_height/224) * 6
		grid_y = (room_height/224) * 6
	//fixed map vars:
	if dsgrid_y < 0
		dsgrid_y = 0
	if dsgrid_y > (room_height/224)
		dsgrid_y = (room_height/224)
		
	simon_x = global.mx + dsgrid_x
	simon_y = global.my + dsgrid_y

	x = xview + (global.mx*6) + grid_x + global.mapoff_x
	y = yview + (global.my*6) + grid_y + global.mapoff_y

	//column1_row1_area0 
	//0 is unexplored, 1 is blank, 2 is checkmark
	currentmaptile = "column" + string(simon_x) + "_" + "row" + string(simon_y) + "_" + "area" + string(0);
	
	if ds_map_find_value(global.savedata, currentmaptile) != 2
		ds_map_replace(global.savedata, currentmaptile, 1 );
		
	if global.needcheckmark = true
	{
		ds_map_replace(global.savedata, currentmaptile, 2 );
		global.needcheckmark = false
	}
}