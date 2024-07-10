/// @description Segment AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	image_speed = 1
	
	counter += 1
	
	if instance_number(objEnemySkeledragon) > 0 //&& counter/segment = round(counter/segment)
		with(objEnemySkeledragon)
		{
			if id = other.special_id
			{
				if other.segment != 0
					other.y = special_id.ystart + (40/other.segment) * ( (special_id.y - special_id.ystart) / ( abs(other.x - x + 0.000001) ) )
					//other.x = other.xstart + (12*image_xscale) + ( (x - xstart)/96 )
			}
		}
		
	if instance_number(special_id) > 0
		if abs(x - special_id.x) > 4
		{
			dietime = abs(x - special_id.x) 
			alarm[0] = dietime
		}
		
		
	//if segment != 0
	//y += cos( (x + counter) * 5 )
}

