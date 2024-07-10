/// @description reset to save and shit
if !global.boss_rush
{
	room_goto(global.save_room)
	instance_create(global.save_x,global.save_y,objSimon)
	global.hp = global.hp_max
	instance_destroy()
}
else
	alarm[1] = 180