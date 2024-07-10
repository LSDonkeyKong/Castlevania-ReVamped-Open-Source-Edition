function scrPhysics()
{
	repeatme = 1
	//if object_get_parent(object_index) == parEnemy && instance_number(objSpiciness) > 0 if ds_map_find_value(global.savedata,"spiciness") == 1 && objSpiciness.spicy_timer/4 == round(objSpiciness.spicy_timer/4)
	//	repeatme = 2
	//if object_get_parent(object_index) == parEnemy && instance_number(objSpiciness) > 0 if ds_map_find_value(global.savedata,"spiciness") == 2 && objSpiciness.spicy_timer/2 == round(objSpiciness.spicy_timer/2)
	//	repeatme = 2
	repeat(repeatme)
	{/// @description Physics Step Script Bruh
	
	//NEEDED: subpixel_x = 0 subpixel_y = 0 x_push = 0 y_push = 0 xspeed = 0 yspeed = 0
	//SHOULD TO BE CUSTOMIZED: yspeed_accel = 0 fallspeed = 4

		{///Auto Left&Right
			subpixel_x += abs(xspeed) - floor(abs(xspeed))
			x_push = 0
			if abs(subpixel_x) >= 1
			{
				x_push = 1
				subpixel_x += -1
			}
			
			
			if xspeed > 0 
				repeat(x_push + floor(abs(xspeed)))
				{
					if !place_meeting(x+1,y,parSolid)
						x += 1
					if place_meeting(x+1,y,parSolid) && !place_meeting(x+1,y-1,parSolid) //up slopes
						{x += 1 y += -1}
					if !place_meeting(x,y+1,parSolid) && place_meeting(x,y+2,parSolid) //down slopes
						y += 1
				}
			if xspeed < 0
				repeat(x_push + floor(abs(xspeed)))
				{
					if !place_meeting(x-1,y,parSolid)
						x += -1
					if place_meeting(x-1,y,parSolid) && !place_meeting(x-1,y-1,parSolid) //up slopes
						{x += -1 y += -1}
					if !place_meeting(x,y+1,parSolid) && place_meeting(x,y+2,parSolid) //down slopes
						y += 1
				}
			//hitting the wall
			if place_meeting(x-1,y,parSolid)
			{
				if xspeed < 0 && place_meeting(x-1,y-1,parSolid)
				xspeed += -xspeed
			}
			if place_meeting(x+1,y,parSolid) && place_meeting(x+1,y-1,parSolid)
			{
				if xspeed > 0
				xspeed += -xspeed
			}
		}

		{///Auto Up&Down
			subpixel_y += abs(yspeed) - floor(abs(yspeed))
			y_push = 0
				if subpixel_y >= 1
				{
					y_push = 1
					subpixel_y += -1
				}

			//fall thru 1 block spaces
			repeat(2)
				if yspeed = 0 && yspeed_accel != 0 && !place_meeting(x,y+1,parSolid) && ( place_meeting(x-xspeed,y+1,parSolid) or place_meeting(x+xspeed,y+1,parSolid) ) && abs(xspeed) < 2
					y += 1
				
			// gravitayyy
			{
				if yspeed < fallspeed
					yspeed += yspeed_accel
				if yspeed > fallspeed
					yspeed = fallspeed
			}
		
			{ // prevent snapping to the ground when going upwards
				if round(yspeed) >= 0 && place_meeting(x,y+1,parSolid) && yspeed_accel != 0
					yspeed = 0
			}
					
			if place_meeting(x,y-1,parSolid)
			{
				if yspeed < 0
				yspeed += 0.1
			}
	
		
				if yspeed > 0 
					repeat(y_push + floor(abs(yspeed)))
					{
						if !place_meeting(x,y+1,parSolid)
							y += 1
					}
				if yspeed < 0
					repeat(y_push + floor(abs(yspeed)))
					{
						if !place_meeting(x,y-1,parSolid)
							y += -1
					}
		}	

	}
}
function scrPhysicsInit()
{//sets up variables to prevent a crash, makes a basic floater
	subpixel_x = 0 subpixel_y = 0 x_push = 0 y_push = 0 xspeed = 0 yspeed = 0
	//the following should be changed for ALL objects, but here they are for error prevention
	yspeed_accel = 0
	fallspeed = 4
}

function on_ground()
{
	if place_meeting(x,y+1,parSolid)
		return true
	else
		return false
}

function scrDefyPhysics()
{
	repeatme = 1
	//if object_get_parent(object_index) == parEnemy && instance_number(objSpiciness) > 0 if ds_map_find_value(global.savedata,"spiciness") == 1 && objSpiciness.spicy_timer/4 == round(objSpiciness.spicy_timer/4)
	//	repeatme = 2
	//if object_get_parent(object_index) == parEnemy && instance_number(objSpiciness) > 0 if ds_map_find_value(global.savedata,"spiciness") == 2 && objSpiciness.spicy_timer/2 == round(objSpiciness.spicy_timer/2)
	//	repeatme = 2
	repeat(repeatme)
	{/// @description Physics Step Script that ignores solids
		//used for projectiles, etc.
	
	//NEEDED: subpixel_x = 0 subpixel_y = 0 x_push = 0 y_push = 0 xspeed = 0 yspeed = 0
	//SHOULD TO BE CUSTOMIZED: yspeed_accel = 0 fallspeed = 4

		{///Auto Left&Right
			subpixel_x += abs(xspeed) - floor(abs(xspeed))
			x_push = 0
			if abs(subpixel_x) >= 1
			{
				x_push = 1
				subpixel_x += -1
			}
			
			
			if xspeed > 0 
				repeat(x_push + floor(abs(xspeed)))
					x += 1
			if xspeed < 0
				repeat(x_push + floor(abs(xspeed)))
					x += -1
		}

		{///Auto Up&Down
			subpixel_y += abs(yspeed) - floor(abs(yspeed))
			y_push = 0
			if subpixel_y >= 1
			{
				y_push = 1
				subpixel_y += -1
			}
			if yspeed > 0 
				repeat(y_push + floor(abs(yspeed)))
					y += 1
			if yspeed < 0
				repeat(y_push + floor(abs(yspeed)))
					y += -1
		}	

	}
}