/// @description inherit then make unique!
event_inherited();
can_leave = false
name = "Stone Man"
hp = 32

ai_step = 0
counter = 0

scrPhysicsInit()
yspeed_accel = 0.2
walkspeed = 0.5

if irandom(1) = 1
	image_xscale = -1
	
original = true

//turn into a lesser demon if it's later game and not before the mummy's room
if room != ruiTombAccess && global.dash
{
	instance_create(x,y+4,objEnemyLesserDemon)
	instance_destroy()
}

enemy_number = 17