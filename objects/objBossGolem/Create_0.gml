/// @description inherit then make unique!
event_inherited();
name = "Golem"
hp = 200

hp_phase1 = 100

ai_step = 0
counter = 0

scrPhysicsInit()
yspeed_accel = 0.1
fallspeed = 2

AI = 0
	CHILL = 0
	HOP = 1
	FIREBALL = 2
	SPIKES = 3
	PUNCH = 4
	
instance_create(x,y,objBossGolemWeakSpot)

create_bossbar()

boss_number = 2

global.nodamage = 0