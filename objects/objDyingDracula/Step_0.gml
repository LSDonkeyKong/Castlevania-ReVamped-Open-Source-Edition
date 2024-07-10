/// @description grow and shit
if !shrink
{
	wide += 2
	
	if wide >= 100
		tall += 2
		
	if tall >= 100
		shrink = true
}
else
{
	wide -= 4
	
	if wide <= 0
		instance_destroy()
}