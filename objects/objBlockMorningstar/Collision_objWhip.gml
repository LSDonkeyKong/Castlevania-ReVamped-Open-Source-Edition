/// @description die to morningstar!
if other.flavor > 0
{
	bitsound(sndBlockBreak)
	instance_destroy()
}
else
	destroy_tile()