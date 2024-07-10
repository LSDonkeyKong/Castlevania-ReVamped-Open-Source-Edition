/// @description spawn shit
instance_create(x,y,objRosary)
with(instance_create_depth(x,y,0,objRosary))
{
	image_xscale = -1
	image_index = 1
}
alarm[0] = 20