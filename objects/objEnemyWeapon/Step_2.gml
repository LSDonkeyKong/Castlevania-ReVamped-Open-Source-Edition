/// @description DUMMY AI
if instance_number(special_id) > 0
{
	sprite_index = special_id.sprite_index
	image_index = special_id.image_index
	image_xscale = special_id.image_xscale
	image_speed = 0
	x = special_id.x
	y = special_id.y
}
else
	instance_destroy()