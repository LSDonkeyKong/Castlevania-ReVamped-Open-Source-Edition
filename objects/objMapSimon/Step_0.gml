/// @description mapscreen toggling
scrControls()

if kMap && !global.boss_rush
{
	if visiboo = false
	{
		bitsound(sndMenuPause)
		parMap.visiboo = true
		deactivate()
		instance_activate_object(parMap)
	}
	else
	{
		if instance_number(objSaveWarpSystem) = 0 //fix for ui canceling bug
		{
			bitsound(sndMenuSelect)
			parMap.visiboo = false
			instance_activate_all()
		}
		if instance_number(objSaveWarpSystem) > 0 //fix for ui canceling bug
		{
			if !objSaveWarpSystem.visible
			{
				bitsound(sndMenuSelect)
				parMap.visiboo = false
				instance_activate_all()
			}
		}
	}
}