/// @description die to ground pound!
if player_exists() = true
{
	if place_meeting(x,y-9,parPlayer) && parPlayer.pounding
	{
		bitsound(sndBlockBreak)
		instance_destroy()
	}
}