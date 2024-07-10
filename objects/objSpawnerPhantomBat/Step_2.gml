/// @description sense player and start fight
if !active && abs(parPlayer.x - x) < eyesight
{
	active = true
	image_index = 1
	alarm[0] = 15
	with( parGate ) 
		x = xstart
}

if active && instance_number(objSimonDie) = 0
{
	global.boss_music = true
	bitBGM(bgmCreaturesInTheDepth)
}
else
	global.boss_music = false
