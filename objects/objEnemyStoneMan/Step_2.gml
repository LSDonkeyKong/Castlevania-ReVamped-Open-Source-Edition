/// @description Stone Man AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	scrPhysics()
	{//always behavior
		image_speed = 1 //always set image_speed since timestop AND i_frames freeze it
		
		if image_xscale = 1 && xspeed < walkspeed
			xspeed += 0.1
		if image_xscale = -1 && xspeed > -walkspeed
			xspeed -= 0.1
		
		if ( on_ground() = true && !place_meeting(x + (image_xscale * 9),y + 12,parSolid) ) or ( place_meeting(x+image_xscale,y,parSolid) && place_meeting(x+image_xscale,y-1,parSolid) )
		{
			image_xscale *= -1
			xspeed = 0
		}
	}
	
	//jump if player tries to make it over ya
	if parPlayer.yspeed != 0 && parPlayer.y - y < -1 && on_ground() = true && abs(parPlayer.x - x) < 64
	{
		yspeed = -4
		bitsound(sndDrip)
	}
	
	if on_ground() = false
		xspeed = 0
	
	if hp > 24
		sprite_set(sprStoneManA,1)
	if hp <= 24
	{
		walkspeed = 1
		sprite_set(sprStoneManB,1.5)
	}
	if hp <= 16
	{
		walkspeed = 1.2
		sprite_set(sprStoneManC,2)
	}
	if hp <= 8
	{
		walkspeed = 1.5
		sprite_set(sprStoneManD,2.5)
	}
}

