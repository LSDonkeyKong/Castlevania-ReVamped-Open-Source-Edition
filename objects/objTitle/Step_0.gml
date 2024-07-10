/// @description change selection
scrControls()

if instance_number(objFadeInShutter) = 0 && image_index != 10
	image_speed = 1

if image_index >= 3
{
	if kDownTap && selection < 2
	{
		bitsound(sndWeaponWhip)
		selection = 1
	}

	if kUpTap && selection < 2
	{
		bitsound(sndWeaponWhip)
		selection = 0
	}

	if kAccept or kPause
	{
		bitsound(sndMenuSelect)
		if selection = 0
		{
			alarm[0] = 60
			audio_stop_sound(bgmCastlevania)
			selection = 2
		}
		if selection = 1
			game_end()
	}

	if selection >= 2
		selection += 1
}

if kPause or kAccept
	image_index = 9