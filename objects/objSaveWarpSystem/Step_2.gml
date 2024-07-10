/// @description calculate cost of warping
scrControls()

if global.warptime = true
{
	application_surface_enable(true);
	screen_sprite = sprite_create_from_surface(application_surface, 0, 0, 400, 224, false, false, 0, 0);
	deactivate()
	instance_activate_object(parMap)
	visible = true
	bitsound(sndPickupOrb)
	global.warptime = false
	parMap.visiboo = true
}

if kCancel && visible = true
{
	bitsound(sndDoor)
	visible = false
	instance_activate_all()
	parMap.visiboo = false
}

if visible
{
	//normal selection values
	if kLeftTap && selection > 0 
		{selection -= 1 bitsound(sndWeaponWhip)}
	else
	{//wrap around
		if kLeftTap && selection = 0 
			{selection = 10 bitsound(sndWeaponWhip)}	
	}
	
	if kRightTap && selection < 10
		{selection += 1 bitsound(sndWeaponWhip)}
	else
	{//wrap around
		if kRightTap && selection = 10
			{selection = 0 bitsound(sndWeaponWhip)}
	}
			
	//if kAccept
	{
		warp_cost = 0
	
		if selection = 0 && ds_map_find_value(global.savedata,"entrance hall save") != undefined //entrance hall
		{
			warp_cost = abs( global.save_rank - 1 ) * 10
			destination = entEntranceHallSave
		}
		if selection = 2 && ds_map_find_value(global.savedata,"torture lab save") != undefined //torture lab
		{
			warp_cost = abs( global.save_rank - 3 ) * 10
			destination = torTortureLabSave
		}
		if selection = 1 && ds_map_find_value(global.savedata,"underground mine save") != undefined //underground mine
		{
			warp_cost = abs( global.save_rank - 2 ) * 10
			destination = undUndergroundMineSave
		}
		if selection = 3 && ds_map_find_value(global.savedata,"castle ruins save") != undefined //castle ruins
		{
			warp_cost = abs( global.save_rank - 4 ) * 10
			destination = ruiCastleRuinsSave
		}
		if selection = 4 && ds_map_find_value(global.savedata,"catacombs save") != undefined //catacombs
		{
			warp_cost = abs( global.save_rank - 5 ) * 10
			destination = catCatacombsSave
		}
		if selection = 5 && ds_map_find_value(global.savedata,"castle courtyard save") != undefined //castle courtyard
		{
			warp_cost = abs( global.save_rank - 6 ) * 10
			destination = couCastleCourtyardSave
		}
		if selection = 6 && ds_map_find_value(global.savedata,"tower bridge save") != undefined //tower bridge
		{
			warp_cost = abs( global.save_rank - 7 ) * 10
			destination = towTowerBridgeSave
		}
		if selection = 7 && ds_map_find_value(global.savedata,"toy room save") != undefined //toy room
		{
			warp_cost = abs( global.save_rank - 8 ) * 10
			destination = toyToyRoomSave
		}
		if selection = 8 && ds_map_find_value(global.savedata,"dungeon save") != undefined //dungeon
		{
			warp_cost = abs( global.save_rank - 9 ) * 10
			destination = dunDungeonSave
		}
		if selection = 9 && ds_map_find_value(global.savedata,"marble gallery save") != undefined //marble gallery
		{
			warp_cost = abs( global.save_rank - 10 ) * 10
			destination = marMarbleGallerySave
		}
		if selection = 10 && ds_map_find_value(global.savedata,"clock tower save") != undefined //clock tower
		{
			warp_cost = abs( global.save_rank - 11 ) * 10
			destination = cloClockTowerSave
		}
	}

	if kAccept && warp_cost > global.gold
		bitsound(sndMenuReject)
		
	//actual warp time!
	if kAccept && warp_cost != 0 && global.gold >= warp_cost
	{
		instance_activate_all()
		global.gold -= warp_cost
		bitsound(sndPickupOrb)
		room_goto(destination)
		if instance_number(objSavePoint) > 0 && player_exists() = true
			{parPlayer.x = objSavePoint.x parPlayer.y = objSavePoint.y parPlayer.i_frames = 60}
		instance_create(0,0,objBlackoutLoad)
		visible = false
		global.warpsnap = true
		parMap.visiboo = false
	}
	
	if kAccept && warp_cost = 0
		bitsound(sndMenuReject)
}