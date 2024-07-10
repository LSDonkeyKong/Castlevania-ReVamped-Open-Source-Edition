/// @description inherit then make unique!
event_inherited();
name = "Dracula"
hp = 666
hp_phase1 = hp/2

ai_step = 1
counter = 0

flash_counter = 0

create_bossbar()

can_leave = true

AI = 1
	VANISHED = 0
	APPEAR = 1
	SHOOT = 2
	FADE = 3
	
choice = 1
fireball = objBossDracula_Red
	RED = objBossDracula_Red
	ORANGE = objBossDracula_Orange
	YELLOW = objBossDracula_Yellow
	GREEN = objBossDracula_Green
	BLUE = objBossDracula_Blue
	PURPLE = objBossDracula_Purple
	
enemy_weapon()

depth = 1

damage = 2

boss_number = 9

global.nodamage = 0