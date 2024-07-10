/// @description scrolling calculations // don't leave rooms
if i_frames > 0
{
	i_frames -= 1
	image_speed = 0
}

if global.timestop > 0
{
	image_speed = 0
	speed = 0
}

if x < 0 && !can_leave
	x = 0
if x > room_width && !can_leave
	x = room_width
	
spicy_timer += 1
if ds_map_find_value(global.savedata,"spiciness") == 1 && spicy_timer/4 == round(spicy_timer/4)
	event_perform(ev_step,ev_step_end)
if ds_map_find_value(global.savedata,"spiciness") == 2 && spicy_timer/3 == round(spicy_timer/3)
	event_perform(ev_step,ev_step_end)