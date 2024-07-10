if global.cursed_card == 2 && global.watch_card == 2 && global.healingstrike_card == 2 && global.timestop > 0
	coolwithme = 0
else
	instance_destroy()
visible = false