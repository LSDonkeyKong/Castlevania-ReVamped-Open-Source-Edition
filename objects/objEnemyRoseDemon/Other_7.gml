/// @description shoot shit
if sprite_index = sprRoseDemon
{
	instance_create(x + (image_xscale*16),y - 8,objEnemyRoseDemonBullet)
	image_speed = 0
	image_index = 0

	counter += 1

	if counter >= 15
	{
		counter = 0
		sprite_set(sprRoseDemonRest,1)
	}
}

if sprite_index = sprRoseDemonRest
{
	counter += 1
	if counter >= 5
		sprite_set(sprRoseDemon,1)
}