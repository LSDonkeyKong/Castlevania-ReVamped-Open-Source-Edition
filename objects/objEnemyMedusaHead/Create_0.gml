/// @description inherit then make unique!
event_inherited();
can_leave = true
name = "Medusa Head"
hp = 1

ai_step = 0
counter = 0

scrViewData()

if player_exists()
{
	image_xscale = -parPlayer.facing
	
	if parPlayer.x < xview + 160 
		image_xscale = -1
	if parPlayer.x > xview + wview - 160
		image_xscale = 1
	
	
	y = 32 * round(parPlayer.y/32)
	
	if image_xscale = -1
		x = xview + wview + 16
	else
		x = xview - 16
		
	starting_y = y - 32 + random(64)
}

y = yview + (hview/2)
starting_y = y

enemy_number = 5