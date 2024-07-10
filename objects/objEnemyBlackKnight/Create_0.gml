/// @description inherit then make unique!
event_inherited();
can_leave = true
name = "The Black Knight"
hp = 16

ai_step = 0
counter = 0

scrPhysicsInit()
yspeed_accel = 0.2
walkspeed = 1.1

eyesight = 160

AI = 0
	PATROL = 0
	WOAH = 1
	CHARGE = 2
	RETREAT = 3
	
if irandom(1) = 1
	image_xscale = -1
	
//turn into a golden armor if it's later game and not medusa's room
if room != torCursedAltar && global.dash
{
	instance_create(x,y,objEnemyGoldenArmor)
	instance_destroy()
}

enemy_number = 4