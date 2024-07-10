/// @description deactivate + expand dong + de-expand
if box_xscale < 12.5 && !shrink
	box_xscale += 1.25

scrControls()
waiting -= 1

if (kAccept|kCancel|kPause|kMap) && waiting <=0 && !shrink && box_xscale = 12.5
{
	bitsound(sndMenuSelect)
	shrink = true
}

deactivate()
	
if shrink
{
	if box_xscale > 0
		box_xscale -= 1.25
	else
	{
		instance_activate_all()
		instance_destroy()
	}
}