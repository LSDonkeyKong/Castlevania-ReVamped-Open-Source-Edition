/// @description turn to blood
if instance_number(objEnemyWaterBlob) = 0 && sprite_index = sprFountain
{
	instance_create(x,y,objEarthquake)
	sprite_set(sprFountainBlood,1)
}
if instance_number(objEnemyWaterBlob) > 0
	sprite_set(sprFountain,1)