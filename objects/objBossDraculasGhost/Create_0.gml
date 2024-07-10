/// @description inherit then make unique!
event_inherited();
name = "Dracula's Ghost"
hp = 600
hp_phase1 = hp/2

ai_step = 0
counter = 0

depth = 1

scrPhysicsInit()
yspeed_accel = 0.2
fallspeed = 3

AI = 0
	CHILL = 0
	HOP = 1
	FIRE = 2
	ICE = 3
	THUNDER = 4
	SLIME = 5
	
landed = 0

create_bossbar()
damage = 2

boss_number = 9

global.nodamage = 0