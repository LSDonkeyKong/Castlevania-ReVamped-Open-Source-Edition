/// @description go away if no player or no 
depth = -5
if player_exists() = false
{
	scrViewData()
	yspeed += -0.5
	if place_meeting(x,y-1,parSolid)
		y += -2
	if y < yview - 16
		instance_destroy()
}
	
if global.kinship_card != 2
{
	scrViewData()
	yspeed += -0.5
	if place_meeting(x,y-1,parSolid)
		y += -2
	if y < yview - 16
		instance_destroy()
}
