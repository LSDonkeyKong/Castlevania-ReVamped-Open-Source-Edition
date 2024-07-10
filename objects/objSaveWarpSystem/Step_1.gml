/// @description strings!
entrancehall_string = "Undiscovered" 
undergroundmine_string = "Undiscovered" 
torturelab_string = "Undiscovered" 
castleruins_string = "Undiscovered" 
catacombs_string = "Undiscovered" 
castlecourtyard_string = "Undiscovered" 
towerbridge_string = "Undiscovered" 
toyroom_string = "Undiscovered" 
dungeon_string = "Undiscovered" 
marblegallery_string = "Undiscovered" 
clocktower_string = "Undiscovered" 

if ds_map_find_value(global.savedata,"entrance hall save") != undefined //entrance hall
	entrancehall_string = "Entrance Hall - Welcome Hall" 
if ds_map_find_value(global.savedata,"underground mine save") != undefined //underground mine
	undergroundmine_string = "Underground Mine - Card Salesman" 
if ds_map_find_value(global.savedata,"torture lab save") != undefined //torture lab
	torturelab_string = "Torture Lab - Chapel Hall" 
if ds_map_find_value(global.savedata,"castle ruins save") != undefined //castle ruins
	castleruins_string = "Castle Ruins - Crossway" 
if ds_map_find_value(global.savedata,"catacombs save") != undefined //catacombs
	catacombs_string = "Catacombs - Gateway" 
if ds_map_find_value(global.savedata,"castle courtyard save") != undefined //castle courtyard
	castlecourtyard_string = "Castle Courtyard - Drained Aqueduct" 
if ds_map_find_value(global.savedata,"tower bridge save") != undefined //tower bridge
	towerbridge_string = "Tower Bridge - Royal Bridge" 
if ds_map_find_value(global.savedata,"toy room save") != undefined //toy room
	toyroom_string = "Toy Room - Hall of Mirrors" 
if ds_map_find_value(global.savedata,"dungeon save") != undefined //dungeon
	dungeon_string = "Dungeon - Experiment Chamber" 
if ds_map_find_value(global.savedata,"marble gallery save") != undefined //marble gallery
	marblegallery_string = "Marble Gallery - Portrait Gallery" 
if ds_map_find_value(global.savedata,"clock tower save") != undefined //clock tower
	clocktower_string = "Clock Tower - Royal Lounge" 

list_string = ( entrancehall_string + 
	undergroundmine_string + 
	torturelab_string + 
	castleruins_string + 
	catacombs_string + 
	castlecourtyard_string + 
	towerbridge_string + 
	toyroom_string + 
	dungeon_string + 
	marblegallery_string + 
	clocktower_string )
	
if selection = 0
	selected_string = entrancehall_string
if selection = 1
	selected_string = undergroundmine_string
if selection = 2
	selected_string = torturelab_string
if selection = 3
	selected_string = castleruins_string
if selection = 4
	selected_string = catacombs_string
if selection = 5
	selected_string = castlecourtyard_string
if selection = 6
	selected_string = towerbridge_string
if selection = 7
	selected_string = toyroom_string
if selection = 8
	selected_string = dungeon_string
if selection = 9
	selected_string = marblegallery_string
if selection = 10
	selected_string = clocktower_string


counter += 1

if counter > 15
{
	flash += 1
	counter = 0
}

if !visible
{
	selection = global.area

	if global.area = 1
		selection = 2
	if global.area = 2
		selection = 1
}