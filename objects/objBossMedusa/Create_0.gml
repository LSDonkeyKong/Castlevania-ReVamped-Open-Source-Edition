/// @description inherit then make unique!
event_inherited();
name = "Medusa"
hp = 500

hp_phase1 = hp * 0.5

ai_step = 0
counter = 0

create_bossbar()

scrPhysicsInit()
yspeed = -3
bitsound(sndBlockBreak)
yspeed_accel = 0.1
walkspeed = 1
dest = 0

AI = 0
	SLITHER = 0
	JUMP = 1
	SWIPE = 2
	COMMAND = 3
	ROCKS = 4
	
enemy_weapon()

boss_number = 1

global.nodamage = 0