/// @description inherit then make unique!
event_inherited();
can_leave = false
hp = 1
damage = 0

ai_step = 0
counter = 0

AI = 0
	HIDE = 0
	FLY = 1
eyesight = 400

scrPhysicsInit()

if instance_number(objSimonDie) > 0
	yspeed = -6

value = ds_map_find_value(global.savedata,"corpse run")
x = ds_map_find_value(global.savedata,"corpse x")
y = ds_map_find_value(global.savedata,"corpse y")