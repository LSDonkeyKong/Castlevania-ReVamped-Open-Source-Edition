/// @description reverse or not
if sprite_index = sprSpikeTrapDown
{
	image_speed = 0
	image_index = frame_count()
	alarm[0] = press_duration
	if in_view() = true
	{
		bitsound(sndEnemyPound)
		instance_create(x,y,objEarthquakeShort)
	}
}

if sprite_index = sprSpikeTrap
{
	image_index = 0
	sprite_set(sprSpikeTrapDown,drop_speed)
}

