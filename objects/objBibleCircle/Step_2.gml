/// @description snap to simon + properly destroy
if instance_number(objBible) > 0 && instance_number(parPlayer) > 0
{
	x = parPlayer.x
	y = parPlayer.y
}
else
	instance_destroy()
	
if global.bible_card = 2
	image_index = 1
else
	image_index = 0