/// @description inherit then make unique!
event_inherited();
name = "Grim Reaper"
hp = 500
hp_phase1 = hp/2

ai_step = 0
counter = 0

create_bossbar()

scrPhysicsInit()

global.sickle_dir = 0

AI = 0
	CHILL = 0
	THROW = 1
	DASH = 2
	GUILLO = 3
	SWOOP = 4
	DOWNPOUR = 5
	SWIRL = 6
	
safe_spot = 0
dest_x = 0
dest_y = 0

boss_number = 8

global.nodamage = 0