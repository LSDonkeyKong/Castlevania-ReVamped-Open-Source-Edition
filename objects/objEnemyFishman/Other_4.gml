/// @description create water blobs if late game
if global.dash
{
	repeat(2)
		instance_create(xstart-12+irandom(24),ystart,objEnemyWaterBlob)
}