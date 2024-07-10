/// @description inherit then make unique!
event_inherited();
name = "Hunchback"
hp = 1

ai_step = 0
counter = 0

scrPhysicsInit()
yspeed_accel = 0.1

AI = 0
	CHILL = 0
	HOP = 1
	
eyesight = 184

//turn into a gremlin if it's later game and not marble gallery
if global.area != 9 && global.area != 5 && global.thunder_whip && object_index = objEnemyHunchback
{
	instance_create(x,y,objEnemyGremlin)
	instance_destroy()
}

enemy_number = 14