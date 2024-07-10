/// @description required vars + critical setup
damage = 0
og_damage = 1
burns = false
freezes = false
shocks = false

i_frames = 15

//critical hit chance
if global.critical_card = 2 && irandom(7) = 3
	alarm[11] = 1
critical = false

depth = -1