/// @description timer
if instance_number(objSimon) > 0 && !global.boss_rush
{
	global.seconds += 1
	if global.seconds >= 60
	{
		global.seconds = 0
		global.minutes += 1
	}
	if global.minutes >= 60
	{
		global.minutes = 0
		global.hours += 1
	}
}

if instance_number(objSimon) > 0 && room != bosBossRush0 && global.boss_rush && instance_number(objEndingShutters) == 0
{
	global.seconds += 1
	if global.seconds >= 60
	{
		global.seconds = 0
		global.minutes += 1
	}
	if global.minutes >= 60
	{
		global.minutes = 0
		global.hours += 1
	}
}
alarm[0] = 60