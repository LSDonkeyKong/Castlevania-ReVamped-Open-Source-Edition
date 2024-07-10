/// @description spawn stuff
if image_index = 0
{
	timeline_running = false
	bitsound(sndEnemyPound)
	instance_create(x,y,objBossMummy)
	instance_create(x,y,objEarthquakeShort)
	image_index = 1
	with( parGate ) 
		x = xstart
}