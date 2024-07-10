/// @description Rose Demon AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	face_player(0)
	if abs(x - parPlayer.x) < eyesight && abs(y - parPlayer.y) < 48
		image_speed = 1
	else
	{
		image_index = 0
		image_speed = 0
	}
}