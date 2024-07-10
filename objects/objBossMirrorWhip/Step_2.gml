/// @description DUMMY AI
if instance_number(objBossMirrorMonster) > 0
{
	sprite_index = objBossMirrorMonster.sprite_index
	image_index = objBossMirrorMonster.image_index
	image_xscale = objBossMirrorMonster.image_xscale
	image_speed = 0
	x = objBossMirrorMonster.x
	y = objBossMirrorMonster.y
}
else
	instance_destroy()