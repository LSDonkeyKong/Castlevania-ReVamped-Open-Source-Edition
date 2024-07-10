/// @description go away & expand dong
if grow && !shrink && image_xscale < 1
{
	image_xscale += 0.1
	image_yscale += 0.1
	
	if image_xscale >= 1
		grow = false
}

if shrink
{
	image_xscale -= 0.05
	image_yscale -= 0.05
	
	if image_xscale <= 0
		instance_destroy()
}

scrControls()

if !grow && !shrink && kAccept
	{audio_stop_sound(bgmLullabySentToTheDevil) bitsound(sndPickupHeartSmall) shrink = true}
	
if !grow && kPause && !shrink
	{audio_stop_sound(bgmLullabySentToTheDevil) bitsound(sndPickupHeartSmall) shrink = true}
	
if !grow && kCancel && !shrink
	{audio_stop_sound(bgmLullabySentToTheDevil) bitsound(sndPickupHeartSmall) shrink = true}