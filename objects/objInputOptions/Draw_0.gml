/// @description Draw it all
var _string = "";
_string += "INPUT OPTIONS\n";
_string += "\n";
_string += input_verb_get_icon("cancel") + " = Return  " + input_verb_get_icon("map") + " = Reset Defaults\n" ;

//Show the rebinding menu if we're paused
if (pause)
{
    if (!input_binding_scan_in_progress())
    {
        _string += "Select an action to remap:\n";
        _string += "\n";
        
        //This is a bit clumsy but sufficient for this example
        //In a real situation you'll probably want to handle this with an array
        if (menu_selection == 0) _string += "♦  ";
        _string += input_verb_get_icon("left") + " = LEFT\n";
        
        if (menu_selection == 1) _string += "♦  ";
        _string += input_verb_get_icon("right") + " = RIGHT\n";
        
        if (menu_selection == 2) _string += "♦  ";
        _string += input_verb_get_icon("up") + " = UP\n";
        
        if (menu_selection == 3) _string += "♦  ";
        _string += input_verb_get_icon("down") + " = DOWN\n";
        
        if (menu_selection == 4) _string += "♦  ";
        _string += input_verb_get_icon("jump") + " = JUMP\n";
		
        if (menu_selection == 5) _string += "♦  ";
        _string += input_verb_get_icon("attack") + " = MAIN WEAPON\n";
        
        if (menu_selection == 6) _string += "♦  ";
        _string += input_verb_get_icon("subweapon") + " = SUBWEAPON\n";
        
        if (menu_selection == 7) _string += "♦  ";
        _string += input_verb_get_icon("dash") + " = DASH\n";
        
        if (menu_selection == 8) _string += "♦  ";
        _string += input_verb_get_icon("swap") + " = SWAP WEAPON\n";
        
	    if (menu_selection == 9) _string += "♦  ";
        _string += input_verb_get_icon("aimlock") + " = LOCK MOVEMENT\n";
		
        if (menu_selection == 10) _string += "♦  ";
        _string += input_verb_get_icon("pause") + " = PAUSE SCREEN\n";
		
        if (menu_selection == 11) _string += "♦  ";
        _string += input_verb_get_icon("map") + " = MAP SCREEN\n";
    }
    else
    {
        //Display what verb we're rebinding if we're scanning for a new verb
        _string += "REBINDING \"" + rebinding_verb + "\" (TIME = " + string(input_binding_scan_time_remaining()) + "ms)\n";
        //_string += "Wait to cancel rebinding\n";
    }
}
else
{
    //Display a control prompt for basic player movement
    _string += input_verb_get_icon("left") + "/" + input_verb_get_icon("right") + "/" + input_verb_get_icon("up") + "/" + input_verb_get_icon("down") + " = Move\n";
}

draw_set_font(fntMessage)
draw_set_color(c_white)

draw_text_scribble(8, 8, _string);