/// @description moving vars, water, safe spots
//safe spots for hazard respawning
if on_ground() = true && !hurting && !ducking && can_control && i_frames = 0 && !hazard_damage && yspeed = 0 && !place_meeting(x,y,parSolid) && !place_meeting(x,y+1,objConveyorBelt) && !place_meeting(x,y+1,objUnsafeBlock)
{
	safe_x = x
	safe_y = y
}

if place_meeting(x,y,parWater) && !global.water_armor
	in_water = true
else
	in_water = false
	
if place_meeting(x,y,parSticky)
	in_water = true
	
//constant physics
yspeed_accel = 0.2
if pounding	
	yspeed_accel = pound_accel
//general movement
walk_accel = 0.25
walk_deccel = 0.75
walkspeed = 1.75
jumpspeed = 4.75
fallspeed = 6

//physics for upgrades
wallspeed = 1
slidespeed = 2
dashspeed = 2.5
poundspeed = 8
pound_accel = 1

if global.super_slide
	slidespeed *= 2

//fall speed caps
if on_wall && can_control
{
	if cling > 0
		yspeed = 0
	fallspeed = wallspeed
}
if pounding
	fallspeed = poundspeed

if cling > 0
	cling -= 1

//water physics
if in_water
{
	//general movement
	walk_accel *= water_factor
	walk_deccel *= water_factor
	walkspeed *= water_factor
	jumpspeed *= water_factor
	fallspeed *= water_factor
	//physics for upgrades
	wallspeed *= water_factor
	slidespeed *= water_factor
	dashspeed *= water_factor
	poundspeed *= water_factor
}

//can control?
if ( !hurting && !attacking && !sliding && !dashing && !pounding )
	can_control = true
else
	can_control = false

//trails
trail_counter += 1
if trail_counter >= 2
{
	trail_counter = 0
	if pounding or dashing or sliding
		instance_create(x,y,objPlayerTrail)
}

//pain
if hurting
{
	if hurt_time > 0
		hurt_time += -1
	if hurt_time <= 0 && on_ground() = true
	{
		whipping = false
		attacking = false
		instance_destroy(objWhip)
		hurting = false
		i_frames = 60
		if sliding
			i_frames = 30
		if !sliding
			xspeed = 0
		if global.hp <= 0
			instance_change(objSimonDie,true)
		if hazard_damage && global.hp > 0
		{
			i_frames = 120
			instance_create(x,y,objFadeInShutter)
			instance_create(x,y,objFadeOutShutter)
			x = safe_x
			y = safe_y
			hazard_damage = false
		}
	}
	if hazard_damage
		xspeed = 0
}
if i_frames > 0
	i_frames -= 1