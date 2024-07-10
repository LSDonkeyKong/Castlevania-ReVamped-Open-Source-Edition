/// @description sense player and start fight
if active && instance_number(objSimonDie) = 0
{
	global.boss_music = true
	bitBGM(bgmYouGoddamnedBathead)
}
else
	global.boss_music = false


if !active && abs(parPlayer.x - x) < eyesight
{
	active = true
	alarm[1] = 30
	alarm[0] = 180
	sprite_set(sprDraculasGhostAppear,1)
	instance_create(x,y,objEarthquake)
}

face_player(0)