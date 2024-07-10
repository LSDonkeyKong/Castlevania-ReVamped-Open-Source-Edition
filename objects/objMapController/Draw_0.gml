/// @description draw maps & tiles
depth = -9999

if visiboo
{
	//draw the grid
	draw_sprite_tiled(sprMapTile,0,xview,yview)
	
	//draw the map i drew
	draw_sprite(sprMapArea,0,xview + global.mapoff_x,yview + global.mapoff_y)

	//DS map for the map
	for (drawColumn = 1; drawColumn < 64; drawColumn++) 
	{
		for (drawRow = 1; drawRow < 24; drawRow++) 
		{
			drawtile = "column" + string(drawColumn) + "_" + "row" + string(drawRow) + "_" + "area0";
			
			tileimage = ds_map_find_value(global.savedata, drawtile)
			
			if tileimage = undefined
				tileimage = 0				
			
			draw_sprite(sprMapTile,tileimage,(drawColumn*6) + xview + global.mapoff_x, (drawRow*6) + yview + global.mapoff_y )
			
			//filled in = 0, blank = 1, checkmark = 3
			//ds_map_replace(global.savedata, "column1_row4_area0", 1
		}
	}
}
