/// @description debug reset room
if debug_mode && keyboard_check(vk_control) && !keyboard_check(vk_shift)
	room_restart()
	
if debug_mode && keyboard_check(vk_control) && keyboard_check(vk_shift)
	title_screen()