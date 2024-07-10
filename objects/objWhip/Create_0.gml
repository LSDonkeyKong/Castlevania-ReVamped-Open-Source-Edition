/// @description assign all proper shit
event_inherited()
image_speed = 0
damage = 8
flavor = global.current_whip
//flame whip does constant damage
if global.current_whip = 2
{
	i_frames = 4
	damage = 2
}
counter = 0

//ice whip is slow and strong
if global.current_whip = 3
{
	damage = 16
	i_frames = 30
}
//thunder whip is fast and snappy
if global.current_whip = 4
	damage = 3
	
bitsound(sndWeaponWhip)

aim_dir = 0

if player_exists() = true
{
	aim_dir = parPlayer.aim_dir
		FORWARD = 0
		UP = 1
		UP_DIAG = 2
		DOWN = 3
		DOWN_DIAG = 4
		
	image_xscale = parPlayer.facing
	
	//assign sprites & properties now
	if global.current_whip = 0 //Leather
	{
		if aim_dir = FORWARD
			sprite_index = sprWhipLeather
		if aim_dir = UP
			sprite_index = sprWhipLeatherUp
		if aim_dir = UP_DIAG
			sprite_index = sprWhipLeatherUpDiag
		if aim_dir = DOWN
			sprite_index = sprWhipLeatherDown
		if aim_dir = DOWN_DIAG
			sprite_index = sprWhipLeatherDownDiag
	}
	if global.current_whip = 1 //Morningstar
	{
		if aim_dir = FORWARD
			sprite_index = sprWhipMorningstar
		if aim_dir = UP
			sprite_index = sprWhipMorningstarUp
		if aim_dir = UP_DIAG
			sprite_index = sprWhipMorningstarUpDiag
		if aim_dir = DOWN
			sprite_index = sprWhipMorningstarDown
		if aim_dir = DOWN_DIAG
			sprite_index = sprWhipMorningstarDownDiag
	}
	if global.current_whip = 2 //Flame
	{
		burns = true
		if aim_dir = FORWARD
			sprite_index = sprWhipFlame
		if aim_dir = UP
			sprite_index = sprWhipFlameUp
		if aim_dir = UP_DIAG
			sprite_index = sprWhipFlameUpDiag
		if aim_dir = DOWN
			sprite_index = sprWhipFlameDown
		if aim_dir = DOWN_DIAG
			sprite_index = sprWhipFlameDownDiag
	}
	if global.current_whip = 3 //Ice
	{
		freezes = true
		if aim_dir = FORWARD
			sprite_index = sprWhipIce
		if aim_dir = UP
			sprite_index = sprWhipIceUp
		if aim_dir = UP_DIAG
			sprite_index = sprWhipIceUpDiag
		if aim_dir = DOWN
			sprite_index = sprWhipIceDown
		if aim_dir = DOWN_DIAG
			sprite_index = sprWhipIceDownDiag
	}
	if global.current_whip = 4 //Thunder
	{
		shocks = true
		if aim_dir = FORWARD
			sprite_index = sprWhipThunder
		if aim_dir = UP
			sprite_index = sprWhipThunderUp
		if aim_dir = UP_DIAG
			sprite_index = sprWhipThunderUpDiag
		if aim_dir = DOWN
			sprite_index = sprWhipThunderDown
		if aim_dir = DOWN_DIAG
			sprite_index = sprWhipThunderDownDiag
	}
}

//multiply by the whip multiplier and then reset it to 1 (for arsenal swap card)
if global.whip_multiplier > 1
	critical = true
damage *= global.whip_multiplier
global.whip_multiplier = 1

//for the healing strike
struck = false

chain_sprite = sprite_index

og_damage = damage