/// @description depth
if instance_number(parUpgrade) > 0
{
	if abs(x - parUpgrade.x) < 16 && abs(y - parUpgrade.y) < 16
	{
		depth = -3
		vspeed = 0
	}
}