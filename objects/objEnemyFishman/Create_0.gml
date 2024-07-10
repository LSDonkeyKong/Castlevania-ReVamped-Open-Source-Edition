/// @description inherit then make unique!
event_inherited();
name = "Fish-Man"
hp = 4

if place_meeting(x,y,parWater)
	ai_step = 0
else
	ai_step = 2
counter = 0

AI = 0
	SWIM = 0
	EMERGE = 1
	WANDER = 2
	SHOOT = 3
	DIVE = 4
	
hit_solid = false
scrPhysicsInit()
yspeed_accel = 0.2
jumped = false
personality = 60 + irandom(60)

enemy_number = 3

other_counter = 0

dir = 1

x = -42069
y = -42069
alarm[0] = 60