/// @description inherit then make unique!
event_inherited();
name = "Frankenstein's Monster"
hp = 370

ai_step = 0
counter = 0

hp_phase1 = hp/2

create_bossbar()

scrPhysicsInit()
yspeed_accel = 0.1
walkspeed = 1.2

pounded = false

AI = 0 
	CHILL = 0
	PACE = 1
	CHARGE = 2
	POUND = 3
	FLAME = 4
	THROW = 5
	PUNCH = 6
	
boss_number = 4

global.nodamage = 0