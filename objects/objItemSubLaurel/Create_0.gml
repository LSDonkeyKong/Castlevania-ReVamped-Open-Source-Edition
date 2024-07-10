/// @description turn into a big heart if current subweapon
event_inherited();
if global.current_subweapon = 8
	instance_change(objItemHeartBig,true)
