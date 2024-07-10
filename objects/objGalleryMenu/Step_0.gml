/// @description select shit
scrControls()

if instance_number(objGalleryCard) = 0
{
	if kCancel or kPause
		room_goto(rmFileSelect)
	
	if kAccept && selection = 0
	{
		if ds_map_find_value(global.gallery,"ending0") > 0
			instance_create(x,y,objGalleryCard)
		else
			bitsound(sndMenuReject)
	}

	if kAccept && selection = 1
	{
		if ds_map_find_value(global.gallery,"ending1") > 0
			instance_create(x,y,objGalleryCard)
		else
			bitsound(sndMenuReject)
	}

	if kAccept && selection = 2
	{
		if ds_map_find_value(global.gallery,"ending2") > 0
			instance_create(x,y,objGalleryCard)
		else
			bitsound(sndMenuReject)
	}

	if kAccept && selection = 3
	{
		if ds_map_find_value(global.gallery,"ending3") > 0
			instance_create(x,y,objGalleryCard)
		else
			bitsound(sndMenuReject)
	}
}
else
{
	if kCancel or kPause
	{
		objGalleryCard.shrink = true
		bitsound(sndMenuSelect)
	}
}