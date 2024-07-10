/// @description set to proper frame / destroy properly
if player_exists() = true
{
	image_index = parPlayer.image_index
	if !parPlayer.attacking
		instance_destroy()
	x = parPlayer.x
	y = parPlayer.y
	if parPlayer.ducking
		y += 8
}
else
	instance_destroy()
	

//flash a whip sprite in when an elemental
if global.current_whip > 1
{
	if aim_dir = FORWARD
		chain_sprite = sprWhipMorningstar
	if aim_dir = UP
		chain_sprite = sprWhipMorningstarUp
	if aim_dir = UP_DIAG
		chain_sprite = sprWhipMorningstarUpDiag
	if aim_dir = DOWN
		chain_sprite = sprWhipMorningstarDown
	if aim_dir = DOWN_DIAG
		chain_sprite = sprWhipMorningstarDownDiag
}
