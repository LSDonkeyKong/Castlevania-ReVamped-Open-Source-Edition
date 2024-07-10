/// @description inherit then make unique!
event_inherited();
name = "Cthulu"
hp = 500

hp_phase1 = hp/2

ai_step = 0
counter = 0

create_bossbar()

scrPhysicsInit()
yspeed_accel = 0.4

AI = 0
	CHILL = 0
	FLOAT = 1
	RED = 2
	ORANGE = 3
	YELLOW = 4
	GREEN = 5
	BLUE = 6
	PURPLE = 7
	
dest_x = irandom(400)

yellow_x = -16

slashed = false

depth = 5

boss_number = 7

global.nodamage = 0