/// @description leave
scrControls()

if visible
{
	if kAccept or kPause or kCancel
	{
		bitsound(sndMenuSelect)
		alarm[2] = 60
	}
}