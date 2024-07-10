/// @description Stained-Glass Ghost AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	scrPhysics()
	{//always behavior
		image_speed = 1 //always set image_speed since timestop AND i_frames freeze it
		
		if image_xscale = 1 && xspeed < walkspeed
			xspeed += 0.2
		if image_xscale = -1 && xspeed > -walkspeed
			xspeed -= 0.2
		
		if ( on_ground() = true && !place_meeting(x + (image_xscale * 4),y + 9,parSolid) ) or ( place_meeting(x+image_xscale,y,parSolid) && place_meeting(x+image_xscale,y-1,parSolid) )
		{
			image_xscale *= -1
			xspeed = 0
		}
		
		/*if irandom(120) = 69
		{
			image_xscale *= -1
			xspeed = 0
		}*/
	}
	
	if i_frames = 1 //shoot glass
	{
		repeat( 2 ) if instance_number(objEnemyStainedGlass) < 12
			instance_create(x,y,objEnemyStainedGlass)
		bitsound(sndGlassBreak)
	}
	
	if hp > 48
		sprite_set(sprStainedGlassGhostA,1)
	if hp <= 48
	{
		walkspeed = 0.6
		sprite_set(sprStainedGlassGhostB,1.25)
	}
	if hp <= 32
	{
		walkspeed = 0.8
		sprite_set(sprStainedGlassGhostC,1.5)
	}
	if hp <= 16
	{
		walkspeed = 1
		sprite_set(sprStainedGlassGhostD,2)
	}
}