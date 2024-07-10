/// @description flash shit
if active && visible
{
	flasher += 1
	
	if flasher/2 = round(flasher/2)
		image_alpha = 1
	else
		image_alpha = 0
}
else
	image_alpha = 1