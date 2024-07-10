/// @description controlled actions, masks, OoB
scrPhysics()
scrControls()
{//set xspeed to 0 when it has been chopped into small enough pieces
	if abs(xspeed) < 0.1
		xspeed = 0
}

#region //CONTROLLED ACTIONS

if can_control
{
	{//turning
		if kLeft
			facing = -1
		if kRight
			facing = 1
	}
		
	{//manual stopping
		if on_ground() && !kLeft && !kRight
			xspeed *= walk_deccel
	}
		
	{//walking + duckwalking
		if kRight && !kLeft && !kAimLock
			xspeed += walk_accel
		if kLeft && !kRight && !kAimLock 
			xspeed += -walk_accel
		//slow the walk if you're ducking
		if ducking
			walkspeed *= duck_factor
		//limit walkspeed
		if xspeed > walkspeed
			xspeed = walkspeed
		if xspeed < -walkspeed
			xspeed = -walkspeed
	}
		
	{//ducking
		if kDown && on_ground() = true && !kAimLock
			ducking = true
		else
			if !place_meeting(x,y-3,parSolid)
			ducking = false
	}
		
	{//jumping + dubble jumping + walljump takeoff
		if ( kJump && on_ground() = true && !ducking ) or ( kJump && on_wall && global.walljump && on_ground() = false )
		{
			if on_wall && global.walljump
			{
				xspeed = -facing * 2
				cling = 0
				clinging = false
			}
			dubble_jumped = false
			yspeed = -jumpspeed
			if !on_wall
				bitsound(sndSimonJump)
			else
				bitsound(sndSimonWalljump)
		}
		if global.dubble_jump && kJump && on_ground() = false && !dubble_jumped && !on_wall && !in_water//&& yspeed >=0
		{
			dubble_jumped = true
			yspeed = -jumpspeed
			bitsound(sndSimonJump)
		}
	}
		
	{//whipping + whip aiming
		if kAttack
		{
			if global.vibration input_vibrate_constant(0.8,0,5)
			attacking = true
			whipping = true
			whip_counter = 0
			image_index = 0
			if global.current_whip < 2
				image_speed = 1
			if global.current_whip = 2 //flame whip is sluggish
				image_speed = 0.7		
			if global.current_whip = 3 //ice whip is slow and strong
				image_speed = 0.66
			if global.current_whip = 4 //thunder whip is fast and snappy
				image_speed = 2
			aim_dir = FORWARD
			if global.whip_aim && !ducking
			{
				//aim upwards
				if kUp && !kLeft && !kRight
					aim_dir = UP
				else
					if kUp
						aim_dir = UP_DIAG
				//aim downwards
				if kDown && on_ground() = false && !kLeft && !kRight
					aim_dir = DOWN
				else
					if kDown && on_ground() = false
						aim_dir = DOWN_DIAG
			}
			instance_create(x,y,objWhip)
		}
	}
		
	{//sliding + super sliding
		if global.slide && ducking && kJump && on_ground() = true && !kAimLock
		{
			bitsound(sndSimonWalljump)
			sliding = true
			xspeed = slidespeed * facing
			if global.super_slide
			{
				xspeed = slidespeed * facing
				instance_create(x,y,objSimonSlideShockwave)
			}
		}
	}
		
	{//wall-sliding (walljump)
		on_wall = false
		if global.walljump && on_ground() = false && yspeed >= 0 && !in_water
		{
			if ( kLeft or kDash ) && position_meeting(x - 6, y, parSolid) && position_meeting(x - 6, y + 9, parSolid) && position_meeting(x - 6, y - 9, parSolid)
			{
				if !clinging
				{
					cling = 20
					clinging = true
				}
				on_wall = true
			}
			if ( kRight or kDash ) && position_meeting(x + 6, y, parSolid) && position_meeting(x + 6, y + 9, parSolid) && position_meeting(x + 6, y - 9, parSolid)
			{
				if !clinging
				{
					cling = 20
					clinging = true
				}
				on_wall = true
			}
			if on_wall
			{
				dashing = false
				dubble_jumped = false
			}
			if !on_wall
				clinging = false
				
			
		}
	}
		
	{//dashing
		if global.dash && !ducking && kDash && cling = 0 && !in_water
		{
			if kLeft
				facing  = -1
			if kRight
				facing = 1
			if global.meteordash_card = 2 
				instance_create(x,y,objMeteorDash)
			bitsound(sndSimonDash)
			dash_counter = 0
			dashing = true
			xspeed = dashspeed * facing
			if on_wall
			{
				xspeed *= -1
				facing *= -1
				on_wall = false
			}
		}
	}
		
	{//ground poundin'
		if global.ground_pound && on_ground() = false && kDown && kJump
		{
			if global.vibration input_vibrate_constant(0.8,0,30)
			pounding = true
			yspeed = 0
			xspeed = 0
			pound_counter = 0
			bitsound(sndSimonPound)
			instance_create(x,y,objGroundPound)
		}
	}
		
	{//whip swappin'
		if kSwap
		{
			bitsound(sndPickupMoney)
			instance_create(x,y,objWhipMenu)
		}
		//don't switch to a whip you don't have, and never return to leather if you have morningstar
		if global.current_whip = 1 && !global.morningstar
			global.current_whip += 1
		if global.current_whip = 2 && !global.flame_whip
			global.current_whip += 1
		if global.current_whip = 3 && !global.ice_whip
			global.current_whip += 1
		if global.current_whip = 4 && !global.thunder_whip
			global.current_whip += 1
		if global.current_whip >= 5
			global.current_whip = 0
		if global.morningstar && global.current_whip = 0
			global.current_whip = 1
	}
		
	{//subweapons
		//number-on-screen limits
		can_subweapon = false
		if instance_number(objWatch) = 0 && instance_number(objBible) = 0 && instance_number(objRosarySpawner) = 0
			can_subweapon = true
		//reject sound if u no have hearts
		if kSubweapon && global.current_subweapon > 0 && global.hearts < global.subweapon_cost 
		{
			bitsound(sndMenuReject)
			instance_create(x,y,objNoHeartsPopup)
		}
		//actual subweapon input and spawning!
		if kSubweapon && global.current_subweapon > 0 && global.hearts >= global.subweapon_cost && can_subweapon
		{
			if global.vibration input_vibrate_constant(0.5,0,5)
			global.hearts += -global.subweapon_cost
			attacking = true
			throw_y = -4
			image_index = 1
			image_speed = 2
			if ducking
				throw_y += 8
			//if global.current_subweapon = 1 //knife
				sub_obj = objKnife
			if global.current_subweapon = 2 //axe
				sub_obj = objAxe
			if global.current_subweapon = 3 //holy water
				sub_obj = objHolyWater
			if global.current_subweapon = 4 //bible
				sub_obj = objBible
			if global.current_subweapon = 5 //boomerang
				sub_obj = objBoomerang
			if global.current_subweapon = 6 //rosary
				sub_obj = objRosarySpawner
			if global.current_subweapon = 7//watch
				sub_obj = objWatch
			if global.current_subweapon = 8 //laurel
			{
				if global.laurel_card = 2
					global.hp += 2
				else
					global.hp += 1
				bitsound(sndLaurel)
				instance_create(x,y,objLaurelPopup)
			}
			if global.current_subweapon != 8
				instance_create(x,y+throw_y,sub_obj)
		}
	}
		
	{//blazing pace card
		pace_counter += 1
		if global.blazingsteps_card = 2 && pace_counter >= 15
		{
			if on_ground() = true && xspeed != 0
				instance_create(x,y,objBlazingPace)
			pace_counter = 0
		}
	}
		
	{//kinship card
		if global.kinship_card = 2 && instance_number(objDoveFamiliar) = 0
			instance_create(x,y,objDoveFamiliar)
	}
	
	{//aim lock
		if kAimLock
			xspeed *= 0.75
	}
}

if kJumpRelease && yspeed < 0 //shortjumping
	yspeed *= shortjump_factor

if attacking //stop when on ground and attackin
{
	if on_ground() = true
		xspeed *= walk_deccel
}

if whipping //handle frames when whipping
{
	//cancel downwards whipping if you land
	if aim_dir = DOWN && on_ground() = true
	{
		attacking = false
		whipping = false
	}
	if aim_dir = DOWN_DIAG && on_ground() = true
	{
		attacking = false
		whipping = false
	}
}

if sliding //slow and return from slide
{
	if !place_meeting(x,y-1,parSolid) && !kDown //uncomment this line to make slide never slow down in a pipe
		xspeed *= 0.9
	if !place_meeting(x,y-1,parSolid) && kDown && abs(xspeed) < slidespeed //uncomment this line to make slide never slow down in a pipe
		xspeed *= 0.9
	if place_meeting(x,y-1,parSolid) && abs(xspeed) < 2 //dont go too slow in a pipe
	{
		xspeed = slidespeed * sign(xspeed)
		if xspeed = 0
			{xspeed = slidespeed * facing * -1	facing *= -1}
	}
	if xspeed = 0 && on_ground() = true
		sliding = false
	if global.vibration input_vibrate_constant(0.01,0,5)
	/*if !place_meeting(x + (facing * 12),y + 14,parSolid)
	{
		xspeed = 0
		sliding = false
	}*/
}

if dashing //slow and return from slide
{
	//avoid misalignment with platforms when scrPhysics does the 1-block fall check
	if yspeed = 0 && yspeed_accel != 0 && !place_meeting(x,y+1,parSolid) && ( place_meeting(x-xspeed,y+1,parSolid) or place_meeting(x+xspeed,y+1,parSolid) )
		y = round(y/8) * 8
		
	if global.vibration input_vibrate_constant(0.1,0,5)
	dash_counter += 1
	//if !place_meeting(x + (facing),y,parSolid)
		yspeed = 0		
	
	stored_y = y
	if !on_ground()
		move_snap(1,8)
	if place_meeting(x,y,parSolid)
		y = stored_y
	
	if dash_counter >= 12
		xspeed *= 0.9
	if abs(xspeed) < 1 && dash_counter >= 30 && !kDash
		dashing = false
	if kDash && position_meeting(x + ( 6 * facing ), y, parSolid) && position_meeting(x + ( 6 * facing ), y + 9, parSolid) && position_meeting(x + ( 6 * facing ), y - 9, parSolid)
	{
		on_wall = true
		clinging = true
		cling = 20
		dashing = false
		dash_counter = 0
	}
	if abs(xspeed) < 2 && dash_counter >= 15 && kDash // allow early repeat if holding
	{
		if kLeft
			facing  = -1
		if kRight
			facing = 1
		if global.meteordash_card = 2 && dash_counter > 20
			instance_create(x,y,objMeteorDash)
		bitsound(sndSimonDash)
		dash_counter = 0
		dashing = true
		xspeed = dashspeed * facing
		
		if on_wall
		{
			xspeed *= -1
			facing *= -1
			on_wall = false
		}
	}
	//double jump out of a dash
	{
		if global.dubble_jump && kJump && on_ground() = false && !dubble_jumped && !on_wall && !in_water//&& yspeed >=0
		{
			dubble_jumped = true
			yspeed = -jumpspeed
			xspeed *= 0.25
			dashing = false
			dash_counter = false
			bitsound(sndSimonJump)
		}	
	}

}

if pounding //know when to stop ground pound
{
	xspeed = 0
	if on_ground() = true
	{
		if global.vibration input_vibrate_constant(0.8,0,15)
		pound_counter += 1
		audio_stop_sound(sndSimonPound)
		if pound_counter = 1
			bitsound(sndSimonPoundThud)
		if pound_counter = 3
			instance_create(x,y,objSimonShockwave)
	}
	if pound_counter >= 10
		pounding = false
	if y >= room_height
		pounding = false
		
}

if cling > 0 && position_meeting(x + ( 6 * facing ), y, parSolid) && position_meeting(x + ( 6 * facing ), y + 9, parSolid) && position_meeting(x + ( 6 * facing ), y - 9, parSolid)
	on_wall = true

if on_ground() = true
	dubble_jumped = false

#endregion

#region//SFX THAT DON'T FIT INTO OTHER CODE
//landing sound
if place_meeting(x,y+2,parSolid) && yspeed > 0
{
	bitsound(sndSimonLand)
	if global.vibration input_vibrate_constant(0.7,0,5)
}
#endregion

#region //MASK + CLIPPING MANAGEMENT

//dont allow standing when crouch walking in a hole
if !ducking && !sliding && place_meeting(x,y-3,parSolid) && on_ground() = true
{
	ducking = true
	dashing = false
}
if on_ground() = false
{
	ducking = false
	//sliding = false
}

//assign proper mask
if !ducking
	mask_index = sprMaskSimon
else
	mask_index = sprMaskSimonDuck
	
if sliding
	mask_index = sprMaskSimonSlide
	
#endregion

#region//OoB
if x < 0
	x = 0
if x > room_width
	x = room_width
if y < -8
	y = -8
if y > room_height + 8
	y = room_height + 8
#endregion

//{//aim lock
//	if kAimLock && whipping
//		xspeed *= 0.25
//}