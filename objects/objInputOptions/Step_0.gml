///@description Only allow the player to navigate the menu if we're not rebinding anything
if (!input_binding_scan_in_progress())
{
    //Move the menu selection up and down, example for how to use 'opposing' checkers
    menu_selection += input_check_opposing_pressed("up", "down") + input_check_opposing_repeat("up", "down");
        
    //Make sure we wrap around the menu
    menu_selection = (menu_selection + 12) mod 12;
        
    //Start the rebinding process when the player selects an option
    if (input_check_pressed("accept"))
    {
        switch(menu_selection)
        {
            case 0: rebinding_verb = "left";   break;
            case 1: rebinding_verb = "right";  break;
            case 2: rebinding_verb = "up";     break;
            case 3: rebinding_verb = "down";   break;
            case 4: rebinding_verb = "jump";  break;
            case 5: rebinding_verb = "attack";   break;
            case 6: rebinding_verb = "subweapon";  break;
            case 7: rebinding_verb = "dash";     break;
            case 8: rebinding_verb = "swap";   break;
			case 9: rebinding_verb = "aimlock";   break;
            case 10: rebinding_verb = "pause"; break;
            case 11: rebinding_verb = "map";   break;
        }
            
        //Ensure we don't scan for vk_escape as that is used for the "pause" verb (which cancels rebinding)
        //input_binding_scan_params_set([vk_escape]);
            
        //Start binding. We specify some code to execute when a new binding is inputted by the player
        //We use the basic input_binding_set_safe() function here but input_binding_set() can be used too for more complex situations
        input_binding_scan_start(function(_binding)
        {
			input_binding_set_safe(rebinding_verb, _binding);
			
			input_binding_set("accept",lock_confirm);
			input_binding_set("cancel",lock_deny);
		});
    }
}

//B to return to menu
scrControls()
if kCancel
	room_goto(rmOptions)
if kMap
{
	input_system_reset()
	bitsound(sndPickup1Up)
}