/// @description move towards player
if player_exists()
{
	scrDefyPhysics()
	
	if x < parPlayer.x
		xspeed = 4
	if x > parPlayer.x
		xspeed = -4
	if y < parPlayer.y
		yspeed = 4
	if y > parPlayer.y
		yspeed = -4
	
	if abs(x - parPlayer.x) < 4 && abs(y - parPlayer.y) < 4 
	{
		xspeed = 0
		yspeed = 0
	}
}