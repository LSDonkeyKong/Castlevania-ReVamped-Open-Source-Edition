/// @description DS Map + set global map vars, set samuel

instance_create(-12,-12,objMapSimon)

global.map = false
global.mapoff_x = 18
global.mapoff_y = 36
global.needcheckmark = false

maparea = global.area
tileimage = 0

visiboo = false

drawtile = 0

//DS map for the map
for (dsColumn = 1; dsColumn < 64; dsColumn++) 
{
	for (dsRow = 1; dsRow < 24; dsRow++) 
	{
		for (dsArea = 0; dsArea < 0; dsArea++)
		{
			var StringAdd = "column" + string(dsColumn) + "_" + "row" + string(dsRow) + "_" + "area" + string(dsArea);
			ds_map_replace(global.savedata, StringAdd, 0 ); //filled in = 0
			//filled in = 0, blank = 1, checkmark = 3
			//ds_map_replace(global.savedata, "column1_row4_area0", 1
		}
	}
}
