/// @description MELT AND SPAWN
if AI = MELT
{
	image_speed = 0
	image_index = frame_count()
	ai_lap()
}
if AI = APPEAR && counter > 0
{
	goo_time = 0
	image_speed = 0
	image_index = frame_count()
	ai_lap()
}