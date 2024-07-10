// Feather disable all

//This script contains the default profiles, and hence the default bindings and verbs, for your game
//
//  Please edit this macro to meet the needs of your game!
//
//The struct return by this script contains the names of each default profile.
//Default profiles then contain the names of verbs. Each verb should be given a binding that is
//appropriate for the profile. You can create bindings by calling one of the input_binding_*()
//functions, such as input_binding_key() for keyboard keys and input_binding_mouse() for
//mouse buttons

return {
    
    keyboard_and_mouse:
    {
		up:    [input_binding_key(vk_up),    input_binding_key("W")],
        down:  [input_binding_key(vk_down),  input_binding_key("S")],
        left:  [input_binding_key(vk_left),  input_binding_key("A")],
        right: [input_binding_key(vk_right), input_binding_key("D")],
        
        accept:  [input_binding_key(vk_space), input_binding_key(vk_enter)],
        cancel:  input_binding_key(vk_backspace),
		pause:   input_binding_key(vk_escape),
		map:	 input_binding_key(vk_tab),
        
		jump:		input_binding_key(vk_space),
        attack:		[input_binding_mouse_button(mb_left), input_binding_key(vk_enter)],
        subweapon:	[input_binding_mouse_button(mb_right), input_binding_key(vk_rshift)],
		dash:		input_binding_key(vk_control),
		
		swap: input_binding_key("E"),      
		
		aimlock: input_binding_key(vk_lshift),
    },
    
    gamepad:
    {
        up:    [input_binding_gamepad_axis(gp_axislv, true),  input_binding_gamepad_button(gp_padu)],
        down:  [input_binding_gamepad_axis(gp_axislv, false), input_binding_gamepad_button(gp_padd)],
        left:  [input_binding_gamepad_axis(gp_axislh, true),  input_binding_gamepad_button(gp_padl)],
        right: [input_binding_gamepad_axis(gp_axislh, false), input_binding_gamepad_button(gp_padr)],
        
        accept:  input_binding_gamepad_button(gp_face1),
        cancel:  input_binding_gamepad_button(gp_face2),
		pause:   input_binding_gamepad_button(gp_start),
		map:	 input_binding_gamepad_button(gp_select),
		
		jump:		input_binding_gamepad_button(gp_face1),
        attack:		input_binding_gamepad_button(gp_face3),
        subweapon:	input_binding_gamepad_button(gp_face2),
		dash:		input_binding_gamepad_button(gp_shoulderr),
          
	    swap:	input_binding_gamepad_button(gp_face4),
		
		aimlock: input_binding_gamepad_button(gp_shoulderl),
    },
    
    touch:
    {
        up:    input_binding_virtual_button(),
        down:  input_binding_virtual_button(),
        left:  input_binding_virtual_button(),
        right: input_binding_virtual_button(),
        
        accept:  input_binding_virtual_button(),
        cancel:  input_binding_virtual_button(),
        action:  input_binding_virtual_button(),
        special: input_binding_virtual_button(),
        
        pause: input_binding_virtual_button(),
    }
    
};
