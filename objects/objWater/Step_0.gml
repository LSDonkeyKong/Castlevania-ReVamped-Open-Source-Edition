/// @description splooshes

if instance_number(parPlayer) > 0
	with(parPlayer)
	{
		if place_meeting(x,y,other.object_index) && !sploosh
		{
			bitsound(sndWaterSploosh)
			repeat(4)
				instance_create(x,y+16,objSploosh)
			sploosh = true
		}
		if !place_meeting(x,y,other.object_index) && sploosh
		{
			bitsound(sndWaterSploosh)
			repeat(4)
				instance_create(x,y+16,objSploosh)
			sploosh = false
		}
	}
	
if instance_number(parEnemy) > 0
	with(parEnemy)
	{
		if place_meeting(x,y,other.object_index) && !sploosh && object_index != objEnemySpider
		{
			bitsound(sndWaterSploosh)
			repeat(4)
				instance_create(x,y+16,objSploosh)
			sploosh = true
		}
		if !place_meeting(x,y,other.object_index) && sploosh && object_index != objEnemySpider
		{
			bitsound(sndWaterSploosh)
			repeat(4)
				instance_create(x,y+16,objSploosh)
			sploosh = false
		}
	}