/// @description grow the bar
if bar_height < 0.5 && !shrink
	bar_height += 0.05

if shrink
	bar_height -= 0.05

if shrink && bar_height <= 0
	instance_destroy()