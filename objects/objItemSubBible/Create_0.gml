/// @description turn into a big heart if current subweapon
event_inherited();
if global.current_subweapon = 4
	instance_change(objItemHeartBig,true)
