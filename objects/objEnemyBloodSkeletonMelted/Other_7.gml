/// @description stuff
if sprite_index = sprBloodSkeletonMelt
{
	sprite_set(sprBloodSkeletonPuddle,1)
	alarm[0] = 45
}

if sprite_index = sprBloodSkeletonPuddle
{
	bitsound(sndDrip)
	image_speed += 0.5
}

if sprite_index = sprBloodSkeletonRevive
{
	with( instance_create_depth(x,y,0,objEnemyBloodSkeleton) )
		image_xscale = other.image_xscale
	instance_destroy()
}