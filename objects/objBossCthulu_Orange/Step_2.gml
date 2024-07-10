/// @description stuff
event_inherited();

if AI = HIDE
	counter += 2

frame += 0.25

if AI = HIDE
	frame += 0.25

if frame > 3
	frame = 0

sprite_index = sprCthulu_Orange
image_index = frame
image_speed = 0

die_counter += 1

if die_counter >= 240
	y -= 6
	
if y < -128
	instance_destroy()