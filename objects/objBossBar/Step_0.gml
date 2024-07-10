/// @description
if instance_number(hp_id) > 0
{
	if max_width = 0
	{
		max_width = hp_id.hp/5
		half_hp = hp_id.hp * 0.5
	}
	repeat(4)
	{
		if image_xscale < hp_id.hp/5
			{
				image_xscale += 0.5
			}
		if image_xscale > hp_id.hp/5
			image_xscale -= 0.5
	}
}
else
	instance_destroy()