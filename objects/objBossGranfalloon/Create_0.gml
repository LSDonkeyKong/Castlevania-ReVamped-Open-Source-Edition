/// @description inherit then make unique!
event_inherited();
name = "Granfalloon"
hp = 500

hp_phase1 = hp/2

create_bossbar()

ai_step = 0
counter = 0

scrPhysicsInit()

AI = 0
	CHILL = 0
	SPIT = 1
	POUND = 2
	BOUNCE = 3
	
face_player(0)

in_sight = 0

depth = 0

boss_number = 6

global.nodamage = 0