/// @description snap to golem
if instance_number(objBossGolem) > 0
{
	x = objBossGolem.x
	y = objBossGolem.y
	image_xscale = objBossGolem.image_xscale
}
else
	instance_destroy()
	
