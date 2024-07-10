/// @description inherit then make unique!
event_inherited();
name = "Black Leopard"
hp = 3
walkspeed = 2

ai_step = 0
counter = 0

scrPhysicsInit()
yspeed_accel = 0.1
fallspeed = 4

AI = 0
	CHILL = 0
	RUN = 1
	JUMP = 2
	
jumped = false
eyesight = 240

//turn into a hellhound if it's later game and not phantom bat's room
if room != entDiningRoom && global.dash && object_index = objEnemyBlackLeopard
{
	instance_create(x,y,objEnemyHellhound)
	instance_destroy()
}

enemy_number = 1