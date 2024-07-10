function destroy_tile()
{
	var layer_id = layer_tilemap_get_id(layer_get_id("Tiles"));
	tilemap_set_at_pixel(layer_id, 0, x, y);	
}

function door(target_x,target_y,target_room)
{
	tx = argument0
	ty = argument1
	troom = argument2
}

function area_setup(area_number,map_x,map_y)
{
	global.area = argument0
	global.mx = argument1
	global.my = argument2
}

function draw_item()
{
	current_pal = 0
	counter += 1
	if counter/60 = round(counter/60) or (counter + 4)/60 = round( (counter + 4)/60 )
		current_pal = 8
	draw_palette_ext(palGlobal,current_pal,x,y)
}

function draw_upgrade()
{
	counter += 1
	if counter/15 = round(counter/15)
	{
		current_pal += 9
		if current_pal > 9
			current_pal = 0
	}
	draw_palette_ext(palGlobal,current_pal,x,y)
}