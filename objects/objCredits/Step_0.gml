/// @description scroll up and shit
if y > -480
	y -= 0.25
else
	leave += 1
	
if leave >= 360
{
	room_goto(dest_room)
}
	
scrControls()

if kPauseHold && room != rmCreditsOptions
	y -= 5
	
if kPause && room = rmCreditsOptions
	room_goto(rmOptions)