/// @description sfx + die
if other.object_index = objWhip
{
	bitsound(sndBlockBreak)
	instance_destroy()
}
else
	destroy_tile()