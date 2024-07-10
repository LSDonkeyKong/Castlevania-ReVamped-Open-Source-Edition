/// @description Skeleton AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	image_speed = 1 //always set image_speed since timestop AND i_frames freeze it
	
	{//ai_step
		if ai_step >= 10 ai_step = 0
		if ai_step = 0 AI = NOTICE
		if ai_step = 1 AI = PACE
		if ai_step = 2 AI = THROW
		if ai_step = 3 AI = JUMP
		if ai_step = 4 AI = THROW
		if ai_step = 5 AI = PACE
		if ai_step = 6 AI = JUMP
		if ai_step = 7 AI = THROW
		if ai_step = 8 AI = PACE
		if ai_step = 9 AI = THROW
		if place_meeting(x,y,parHazard)
			AI = JUMP
	}
	
	scrPhysics()
	if abs(xspeed) < 0.1
		xspeed = 0
	
	if AI = NOTICE
	{
		sprite_set(sprSkeleton,0)
		xspeed *= 0.75
		face_player(0)
		if abs(x - parPlayer.x) < eyesight
			counter += 1
		if counter >= 15
			ai_lap()
	}
	
	if AI = PACE
	{
		sprite_set(sprSkeleton,1)
		
		if counter/20 = round(counter/20)
			dest_x = xstart - 64 + irandom(128)
		counter += 1
		
		if x < dest_x && xspeed < 1.5
			xspeed += 0.25
		if x > dest_x && xspeed > -1.5
			xspeed -= 0.25
			
		face_player(0)
		
		if counter > 60
			ai_lap()
	}
	
	if AI = THROW
	{
		sprite_set(sprSkeletonThrow,1)
		xspeed *= 0.75
		face_player(0)
		if counter = 0
			counter += 1
		if counter = 1
		{
			image_index = 0
			counter += 1
			stop_point = 2 + irandom(3)
		}
		if counter > stop_point
			ai_lap()
		//see animation end for bone throw
	}
	
	if AI = JUMP
	{
		sprite_set(sprSkeleton,0)
		counter += 1
		if counter = 1
		{
			yspeed += -3
			if x > xstart
				xspeed = -2
			else
				xspeed = 2
		}
		if on_ground() = true && counter > 15
			ai_lap()
	}
	
	//stop at ledges
	if ( on_ground() = true && !place_meeting(x + (sign(xspeed) * 9),y + 12,parSolid) ) or ( place_meeting(x+sign(xspeed),y,parSolid) && place_meeting(x+sign(xspeed),y-1,parSolid) )
		xspeed = 0
}