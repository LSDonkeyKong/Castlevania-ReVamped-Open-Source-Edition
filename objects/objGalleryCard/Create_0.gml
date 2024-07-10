/// @description setup
image_speed = 0
if instance_number(objGalleryMenu) > 0
{
	image_index = objGalleryMenu.selection
}

grow = true
shrink = false

image_xscale = 0
image_yscale = 0

bitsound(sndPickupHeart)