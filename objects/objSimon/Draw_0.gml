/// @description sprites!!
scrPlayerSprites()
scrControls()

depth = 0

if !attacking
{
	if can_control
	{
		if on_ground() = true && xspeed = 0
		{
			if !ducking
				sprite_set(sIdle,1)
			if ducking
				sprite_set(sDuck,0)
		}
		
		if on_ground() = true && xspeed != 0
		{
			if !ducking
				sprite_set(sWalk,abs(xspeed/walkspeed))
			if ducking
				sprite_set(sDuck,abs(xspeed/walkspeed))
		}
		
		if on_ground() = false && !on_wall
		{
			if !dubble_jumped
				sprite_set(sJump,1)
			else
				sprite_set(sDubble,1)
		}
			
		if on_ground() = false && on_wall
			sprite_set(sWalljump,1)
	}
	
	if sliding
		sprite_set(sSlide,1)
		
	if dashing
	{
		sprite_set(sDash,0)
		
		if dash_counter/2 = round(dash_counter/2)
			image_index = 0
		else
			image_index = 1
			
		if dash_counter > 20
			image_index = 2	
	}
		
	if pounding
		sprite_set(sPound,1)
}

if attacking
{
	if whipping && whip_counter = 0
	{
		//image_speed = 1
		if aim_dir = FORWARD
		{
			if !ducking && on_ground() = true
				sprite_index = sWhip
			if !ducking && on_ground() = false
				sprite_index = sWhipJump
			if ducking
				sprite_index = sWhipDuck
		}
		if aim_dir = UP
		{
			if on_ground() = true
				sprite_index = sWhipUp
			else
				sprite_index = sWhipJumpUp
		}
		if aim_dir = UP_DIAG
		{
			if on_ground() = true
				sprite_index = sWhipUpDiag
			else
				sprite_index = sWhipJumpUpDiag
		}
		if aim_dir = DOWN
			sprite_index = sWhipDown
		if aim_dir = DOWN_DIAG
			sprite_index = sWhipDownDiag
	}
	if !whipping
	{
		image_speed = 1
		if !ducking && on_ground() = true
			sprite_index = sWhip
		if !ducking && on_ground() = false
			sprite_index = sWhipJump
		if ducking
			sprite_index = sWhipDuck
	}
}

if hurting
{
	image_speed = 0
	sprite_index = sHurt
	if on_ground() = true
	{
		if ducking 
			image_index = 2
		else
			image_index = 1
	}
	else
		image_index = 0
}

#region//actually draw simon!

current_pal = 0
if global.water_armor
	current_pal = 1

if i_frames/2 = round(i_frames/2)
	draw_palette_ext(palSimon,current_pal,x,y)
	
if hurt_time > 6 && !hazard_damage
{
	if hurt_time/2 = round(hurt_time/2)
		draw_palette_ext(palGlobal,7,x,y)
	else
		draw_palette_ext(palGlobal,8,x,y)
}

#endregion

if kAimLock
	draw_sprite_ext(sprAimLock,-1,x,y,1,1,0,c_white,1)