/// @description sense player and start fight
if active && instance_number(objSimonDie) = 0
{
	global.boss_music = true
	bitBGM(bgmCreaturesInTheDepth)
}
else
	global.boss_music = false


if !active && abs(parPlayer.x - x) < eyesight
{
	active = true
	alarm[1] = 5
	alarm[0] = 25
	instance_create(x,y,objEarthquake)
	with( parGate ) 
		x = xstart
}

