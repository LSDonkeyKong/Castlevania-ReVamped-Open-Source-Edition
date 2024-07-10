/// @description Mummy Man AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	image_speed = 1 //always set image_speed since timestop AND i_frames freeze it

	scrPhysics()
	
	//FOREVER BEHAVIOR
	if image_xscale = 1 && xspeed < walkspeed
		xspeed += 0.2
	if image_xscale = -1 && xspeed > -walkspeed
		xspeed -= 0.2
		
	if ( on_ground() = true && !place_meeting(x + (image_xscale * 4),y + 9,parSolid) ) or ( place_meeting(x+image_xscale,y,parSolid) && place_meeting(x+image_xscale,y-1,parSolid) )
	{
		image_xscale *= -1
		xspeed = 0
	}
	
	counter += 1
	
	if counter >= 90 && in_view() = true
	{
		instance_create(x,y - 8 + irandom(16),objEnemyMummyManWrap)
		counter = 0
	}
}