/// @description DUMMY AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	scrPhysics()
	
	image_speed = 1
		
	if image_xscale = 1 && xspeed < walkspeed
		xspeed += 0.2
	if image_xscale = -1 && xspeed > -walkspeed
		xspeed -= 0.2
		
	if ( on_ground() = true && !place_meeting(x + (image_xscale * 4),y + 9,parSolid) ) or ( place_meeting(x+image_xscale,y,parSolid) && place_meeting(x+image_xscale,y-1,parSolid) )
	{
		image_xscale *= -1
		xspeed = 0
	}
			
	if floor(image_index) = 6 && !place_meeting(x,y,objEnemyBurningManBullet)
		instance_create(x,y,objEnemyBurningManBullet)
}