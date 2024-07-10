/// @description inherit then make unique!
event_inherited();
name = "Yorick"
hp = 20

ai_step = 0
counter = 0

with( instance_create_depth(x,y,0,objEnemyYorickHead) )
{
	other.special_id = id
}

scrPhysicsInit()
yspeed_accel = 0.2

walkspeed = 2

enemy_number = 30