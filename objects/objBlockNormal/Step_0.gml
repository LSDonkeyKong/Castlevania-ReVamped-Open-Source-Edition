/// @description die to ground pound!
if instance_number(objSimon) > 0 && object_index = objBlockNormal
{
	if place_meeting(x,y-9,parPlayer) && parPlayer.pounding
	{
		bitsound(sndBlockBreak)
		instance_destroy()
	}
}