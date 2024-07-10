/// @description Mirror Monster AI
if global.timestop/2 = round(global.timestop/2) //&& i_frames < 2
{
	{//ai step
		if ai_step >= 15 ai_step = 0
		if ai_step = 0 AI = HOP
		if ai_step = 1 AI = IDLE
		if ai_step = 2 AI = PACE
		if ai_step = 3 AI = WHIP
		if ai_step = 4 AI =	PACE
		if ai_step = 5 AI = WHIP
		if ai_step = 6 AI = IDLE 
		if ai_step = 7 AI = SUB
		if ai_step = 8 AI = PACE
		if ai_step = 9 AI = HOP
		if ai_step = 10 AI = WHIP
		if ai_step = 11 AI = IDLE
		if ai_step = 12 AI = PACE
		if ai_step = 13 AI = SUB
		if ai_step = 14 AI = WHIP
	}
	
	scrPhysics()
	
	if abs(xspeed) < 0.1
		xspeed = 0
		
	if xspeed > 0
		image_xscale = 1
	if xspeed < 0
		image_xscale = -1
	
	if AI = IDLE
	{
		if on_ground() = true
			sprite_set(sprMirrorIdle,1)
		else
			sprite_set(sprMirrorJump,1)
			
		counter += 1
		
		if on_ground() = true
			xspeed *= walk_deccel
		
		if counter >= 75
			ai_lap()
			
		if place_meeting(x,y,objHolyFlame)
			ai_lap()
	}
	
	if AI = PACE
	{
		if on_ground() = true
			sprite_set(sprMirrorWalk,1)
		else
			sprite_set(sprMirrorJump,1)
			
		if counter/20 = round(counter/20)
		{
			if parPlayer.x < x
				dest_x = parPlayer.x + safe_distance
			else
				dest_x = parPlayer.x - safe_distance
		}
			
		counter += 1
		
		if x < dest_x && xspeed < walkspeed
			xspeed += walk_accel
		if x > dest_x && xspeed > -walkspeed
			xspeed -= walk_accel
			
		if abs(x - dest_x) < 8
			ai_lap()
			
		if counter >= 120
			ai_lap()
	}
	
	if AI = HOP
	{
		if on_ground() = true
			sprite_set(sprMirrorIdle,1)
		else
			sprite_set(sprMirrorJump,1)
		
		counter += 1
		
		if counter = 1 && on_ground() = true
		{
			bitsound(sndSimonJump)
			yspeed = -jumpspeed
			if irandom(1) = 1
			{
				face_player(0)
				xspeed = walkspeed * image_xscale
			}
		}
		
		if counter > 15
			ai_lap()
	}
	
	if AI = WHIP
	{
		counter += 1
		image_speed = 1
		
		if counter = 1 && on_ground() = true
		{
			bitsound(sndWeaponWhip)
			face_player(0)
			whip_counter = 0
			sprite_set(sprMirrorWhip,1)
			if parPlayer.y < y - 16
				sprite_set(sprMirrorWhipUp,1)
			if parPlayer.y > y + 8
				sprite_set(sprMirrorWhipDuck,1)
			image_index = 0
		}
		
		if counter = 1 && on_ground() = false
		{
			bitsound(sndWeaponWhip)
			face_player(0)
			whip_counter = 0
			sprite_set(sprMirrorWhip,1)
			if parPlayer.y < y - 8
				sprite_set(sprMirrorWhipUp,1)
			if parPlayer.y > y
				sprite_set(sprMirrorWhipDown,1)
			image_index = 0
		}
		
		if image_index >= frame_count()
		{
			whip_counter += 1
			image_index = frame_count()
			if whip_counter >= 12
				ai_lap()
		}
				
		if on_ground() = true
			xspeed *= 0.5
	}
	
	if AI = SUB
	{
		counter += 1
		image_speed = 1
		
		if counter = 1
		{
			face_player(0)
			sprite_set(sprMirrorSubweapon,1)
			image_index = 0
		}
		
		if on_ground() = true
			xspeed *= 0.5
		
		if abs(parPlayer.x - x) > safe_distance
			sub_item = objBossMirrorKnife
		else
			sub_item = objBossMirrorBottle
			
		if parPlayer.y < y - 32
			sub_item = objBossMirrorAxe
		
		if image_index >= frame_count()
		{
			instance_create(x,y,sub_item)
			ai_lap()
		}
	}
}
