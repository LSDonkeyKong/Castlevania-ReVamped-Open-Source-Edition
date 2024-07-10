/// @description new/load ?
file0offset = 0
file1offset = 32
file2offset = 64
optionsoffset = 96
galleryoffset = 128
bossrushoffset = 160
recordoffset = 169

scrViewData()
	
nes_colors()
draw_set_font(fntMessage)
draw_set_color(c_white)
draw_set_halign(fa_left)

if deleted
{
	draw_set_halign(fa_right)
	draw_text_outline(400 - 8,224 - 10,c_white,nes_red,"Press " + input_verb_get_icon("cancel") + " to undo file delete.")
	draw_set_halign(fa_left)
}
file0icon = ds_map_find_value(global.options,"icon file 0")
file1icon = ds_map_find_value(global.options,"icon file 1")
file2icon = ds_map_find_value(global.options,"icon file 2")

if simon0_new 
	file0icon = 0
if simon1_new 
	file1icon = 0
if simon2_new 
	file2icon = 0


if selection == 0
	draw_sprite(sprItemIcons,file0icon,x-20,y+ 8 + (32*selection) )
if selection == 1
	draw_sprite(sprItemIcons,file1icon,x-20,y+ 8 + (32*selection) )
if selection == 2
	draw_sprite(sprItemIcons,file2icon,x-20,y+ 8 + (32*selection) )
if selection > 2
	draw_sprite(sprItemIcons,0,x-20,y+ 8 + (32*selection) )
	

{//new files
	if simon0_new
		draw_text(x,y + file0offset,"New Game")
	if simon1_new
		draw_text(x,y + file1offset,"New Game")
	if simon2_new
		draw_text(x,y + file2offset,"New Game")
}

{//draw file A
	if !simon0_new
	{
		draw_text(x,y + file0offset,"[Game A] "+string(simon0_collection)+"%")
		draw_text(x + 112,y + 16 + file0offset,string(simon0_hours)+" hours "+string(simon0_minutes)+" minutes")
		if simon0_area = 0	draw_text(x + 112,y + file0offset,"Entrance Hall")	
		if simon0_area = 1	draw_text(x + 112,y + file0offset,"Torture Lab")
		if simon0_area = 2	draw_text(x + 112,y + file0offset,"Underground Mine")
		if simon0_area = 3	draw_text(x + 112,y + file0offset,"Castle Ruins")
		if simon0_area = 4	draw_text(x + 112,y + file0offset,"Catacombs")
		if simon0_area = 5	draw_text(x + 112,y + file0offset,"Castle Courtyard")
		if simon0_area = 6	draw_text(x + 112,y + file0offset,"Tower Bridge")
		if simon0_area = 7	draw_text(x + 112,y + file0offset,"Toy Room")
		if simon0_area = 8	draw_text(x + 112,y + file0offset,"Dungeon")
		if simon0_area = 9	draw_text(x + 112,y + file0offset,"Marble Gallery")
		if simon0_area = 10	draw_text(x + 112,y + file0offset,"Clock Tower")
		if simon0_area = 11	draw_text(x + 112,y + file0offset,"Castle Keep")
	}
}
	
{//draw file B
	if !simon1_new
	{
		draw_text(x,y + file1offset,"[Game B] "+string(simon1_collection)+"%")
		draw_text(x + 112,y + 16 + file1offset,string(simon1_hours)+" hours "+string(simon1_minutes)+" minutes")
		if simon1_area = 0	draw_text(x + 112,y + file1offset,"Entrance Hall")	
		if simon1_area = 1	draw_text(x + 112,y + file1offset,"Torture Lab")
		if simon1_area = 2	draw_text(x + 112,y + file1offset,"Underground Mine")
		if simon1_area = 3	draw_text(x + 112,y + file1offset,"Castle Ruins")
		if simon1_area = 4	draw_text(x + 112,y + file1offset,"Catacombs")
		if simon1_area = 5	draw_text(x + 112,y + file1offset,"Castle Courtyard")
		if simon1_area = 6	draw_text(x + 112,y + file1offset,"Tower Bridge")
		if simon1_area = 7	draw_text(x + 112,y + file1offset,"Toy Room")
		if simon1_area = 8	draw_text(x + 112,y + file1offset,"Dungeon")
		if simon1_area = 9	draw_text(x + 112,y + file1offset,"Marble Gallery")
		if simon1_area = 10	draw_text(x + 112,y + file1offset,"Clock Tower")
		if simon1_area = 11	draw_text(x + 112,y + file1offset,"Castle Keep")
	}
}
	
{//draw file C
	if !simon2_new
	{
		draw_text(x,y + file2offset,"[Game C] "+string(simon2_collection)+"%")
		draw_text(x + 112,y + 16 + file2offset,string(simon2_hours)+" hours "+string(simon2_minutes)+" minutes")
		if simon2_area = 0	draw_text(x + 112,y + file2offset,"Entrance Hall")	
		if simon2_area = 1	draw_text(x + 112,y + file2offset,"Torture Lab")
		if simon2_area = 2	draw_text(x + 112,y + file2offset,"Underground Mine")
		if simon2_area = 3	draw_text(x + 112,y + file2offset,"Castle Ruins")
		if simon2_area = 4	draw_text(x + 112,y + file2offset,"Catacombs")
		if simon2_area = 5	draw_text(x + 112,y + file2offset,"Castle Courtyard")
		if simon2_area = 6	draw_text(x + 112,y + file2offset,"Tower Bridge")
		if simon2_area = 7	draw_text(x + 112,y + file2offset,"Toy Room")
		if simon2_area = 8	draw_text(x + 112,y + file2offset,"Dungeon")
		if simon2_area = 9	draw_text(x + 112,y + file2offset,"Marble Gallery")
		if simon2_area = 10	draw_text(x + 112,y + file2offset,"Clock Tower")
		if simon2_area = 11	draw_text(x + 112,y + file2offset,"Castle Keep")
	}
}

{//draw options & gallery & boss rush
	nes_colors()
	
	draw_text(x, y + optionsoffset,"Options")
	draw_text(x, y + galleryoffset,"Gallery")
	if ds_map_find_value(global.gallery,"bossrush") = 1
	{
		draw_text(x, y + bossrushoffset,"Boss Rush")
		draw_text_outline( x + 24,y + recordoffset,c_white,nes_yellow,string(bossrush_record) )
	}
	else
		draw_text(x, y + bossrushoffset,"????????")
}

{//controls key
	controlkey = input_verb_get_icon("accept") + " Confirm\n" + input_verb_get_icon("map") + " Delete File"
	draw_text_scribble(200,192,controlkey)
}

//version number
//draw_set_font(fntCritical)
//draw_text_outline(12,224-12,c_white,c_black,"BETA 100")