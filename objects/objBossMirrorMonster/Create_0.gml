/// @description inherit then make unique!
event_inherited();
name = "Mirror Monster"
hp = 500

ai_step = 0
counter = 0

create_bossbar()

instance_create(0,0,objBossMirrorWhip)

scrPhysicsInit()
yspeed_accel = 0.2

walk_accel = 0.25
walk_deccel = 0.75
walkspeed = 1.75
jumpspeed = 4.75
fallspeed = 6

whip_counter = 0

sub_item = objBossMirrorKnife

safe_distance = 40

AI = 0
	IDLE = 0
	PACE = 1
	HOP = 2
	WHIP = 3
	SUB = 4
	
yspeed = -8
	
repeat(128) 
{
	if place_meeting(x,y,parSolid)
		y += 1
}

if y > room_height
{
	x = 200
	y = 128
}

boss_number = 5

global.nodamage = 0