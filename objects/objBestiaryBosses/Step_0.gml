/// @description strings
if counter = 0 repeat(10)
{
	if counter + 1 < 10
		number_string = "0" + string(counter + 1) + ".   "
	else
		number_string = string(counter + 1) + ".   "
		
	list_entry = string( number_string ) + string( bestiary_boss_names(counter) ) + "\n"
	
	list_string += string(list_entry)
	
	counter += 1
}

