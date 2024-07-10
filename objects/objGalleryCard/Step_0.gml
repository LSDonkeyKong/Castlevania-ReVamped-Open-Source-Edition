/// @description go away & expand dong
if instance_number(objGalleryMenu) > 0
{
	if image_index != objGalleryMenu.selection
	{
		shrink = true
		grow = false
	}
}

if grow && !shrink && image_xscale < 1
{
	image_xscale += 0.2
	image_yscale += 0.2
	
	if image_xscale >= 1
		grow = false
}

if shrink
{
	image_xscale -= 0.2
	image_yscale -= 0.2
	
	if image_xscale <= 0
		instance_destroy()
}