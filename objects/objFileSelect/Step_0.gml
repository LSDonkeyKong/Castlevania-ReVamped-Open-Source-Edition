/// @description choose option or whatever
scrControls()

if kCancel && !deleted
	{
		audio_stop_all()
		bitsound(sndThudWet)
		title_screen()
	}
	
if kCancel && deleted
	{
		bitsound(sndLaurel)
		if deleted0
			{simon0_new = false deleted0 = false}
		if deleted1
			{simon1_new = false deleted1 = false}
		if deleted2
			{simon2_new = false	deleted2 = false}
		deleted = false
	}

global.fileselect = selection 

if kDownTap
	{
	selection += 1	
	if selection > 5
		selection = 5
	bitsound(sndWeaponWhip)
	}
	
if kUpTap
	{
	selection += -1
	if selection < 0
		selection = 0
	bitsound(sndWeaponWhip)
	}
	
if kAccept	//&& can_load //load or new game or go to a menu
	{
	bitsound(sndMenuSelect)

	if selection = 0 && simon0_new
		{ room_goto(rmNewGame) global.fileselect = 0 }
	if selection = 0 && !simon0_new
		{ room_goto(rmLoadGame) global.fileselect = 0 }
		
	if selection = 1 && simon1_new
		{ room_goto(rmNewGame) global.fileselect = 1 }
	if selection = 1 && !simon1_new
		{ room_goto(rmLoadGame) global.fileselect = 1 }
		
	if selection = 2 && simon2_new
		{ room_goto(rmNewGame) global.fileselect = 2 }
	if selection = 2 && !simon2_new
		{ room_goto(rmLoadGame) global.fileselect = 2 }
		
	if selection = 3
		room_goto(rmOptions)
		
	if selection = 4
		room_goto(rmGallery)
		
	if selection = 5 && ds_map_find_value(global.gallery,"bossrush") = 1
		room_goto(rmNewBossRush)
	if selection = 5 && ds_map_find_value(global.gallery,"bossrush") != 1
		bitsound(sndMenuReject)
	}
	
if kMap && selection < 3//force new game
{
	bitsound(sndDoor)
	
	instance_create(x,y,objEarthquake)
	
	deleted = true
	
	alarm[0] = 300
	
	if selection = 0
		{simon0_new = true deleted0 = true}
		
	if selection = 1 
		{simon1_new = true deleted1 = true}
		
	if selection = 2
		{simon2_new = true deleted2 = true}
}
	
if kSwap && selection < 3 //&& can_load //load or new game or go to a menu
{
	bitsound(sndPickupMoney)
	instance_create(x,y,objEarthquakeShort)

	if selection = 0 && !simon0_new
		{ ds_map_replace( global.options,"icon file 0",irandom(22) ) }
		
	if selection = 1 && !simon1_new
		{ ds_map_replace( global.options,"icon file 1",irandom(22) ) }
		
	if selection = 2 && !simon2_new
		{ ds_map_replace( global.options,"icon file 2",irandom(22) ) }
		
	ds_map_secure_save(global.options,"Castlevania_Options.sav")
}