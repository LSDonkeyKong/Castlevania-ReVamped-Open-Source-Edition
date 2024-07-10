/// @description die
if player_exists()
{
	if parPlayer.x > x + 16
	{
		collected()
		repeat(12)
			instance_create(x + 8,y + irandom(64),objDebris)
		instance_destroy()
	}
}