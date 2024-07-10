/// @description make visible and deactivate stuff

if global.view_entry && !visible
{
	visible = true
	bitsound(sndPickupHeart)
	scroll = 0
	deactivate()
}