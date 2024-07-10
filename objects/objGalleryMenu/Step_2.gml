/// @description control shit
scrControls()

if kLeftTap
{
	selection -= 1
	bitsound(sndMenuSelect)
}

if kRightTap
{
	selection += 1
	bitsound(sndMenuSelect)
}

if kUpTap
{
	selection -= 2
	bitsound(sndMenuSelect)
}

if kDownTap
{
	selection += 2
	bitsound(sndMenuSelect)
}

if selection < 0
	selection = 0
if selection > 3
	selection = 3