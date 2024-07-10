/// @description copy playaaa
if player_exists() = true && instance_number(objSimon) > 0
{
	sprite_index = parPlayer.sprite_index
	image_index = parPlayer.image_index
	image_speed = 0
}

fadeframe = 0

depth = 1

scrViewData()

//surfacewithmask = surface_create(sprite_get_width(sprite_index), sprite_get_height(sprite_index));
