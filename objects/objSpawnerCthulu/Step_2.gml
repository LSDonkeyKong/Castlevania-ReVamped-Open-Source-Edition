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
	image_speed = 1
	sprite_set(sprCthuluScreamB,1)
	alarm[1] = 5
	alarm[0] = 60
	//spawn in animation end event
	instance_create(x,y,objEarthquake)
	with( parGate ) 
		x = xstart
}

face_player(0)