/// @description DOVE FAMILIAR AI
scrPhysics()
//decide how to behave
if AI = CHILL
{	
	counter += 1
	if counter > 180 && instance_number(parEnemy) > 0 
	{
		ai_lap()
		AI = CHARGE
		chasing = false
	}
	if global.cursed_card = 2
	{
		sprite_index = sprSeiryu
		image_speed = 1
	}
	else
	{
		image_speed = 1
		sprite_index = sprDove
	}
	
	if player_exists() = true && instance_number(objSimon) > 0
	{
		image_xscale = parPlayer.facing
		if abs( x - ( parPlayer.x-(32 * image_xscale) ) ) < 16 && abs( y - (parPlayer.y - 24) ) < 16
		{
			if speed > 0.5
				speed += -0.2
			direction += 5 * -image_xscale
		}
		else
		{
			move_towards_point( parPlayer.x - (32 * image_xscale),parPlayer.y - 24,2 )
			move_snap(1,1)
		}
	}
}

if AI = CHARGE
{
	if global.cursed_card = 2
	{
		sprite_index = sprSeiryuAttack
		image_speed = 1
	}
	else
	{
		sprite_index = sprDoveAttack
		image_speed = 0
		image_index = 0
	}
	
	if instance_number(parEnemy) > 0
		chase_me = instance_nearest(x, y, parEnemy)
	
	if !chasing
	{
		if chase_me = noone
			chase_me = object_index
		chasing = true
		if chase_me.x < x
			image_xscale = -1
		else
			image_xscale = 1
		if abs(x - chase_me.x) < 224 && abs(y - chase_me.y) < 160
			move_towards_point(chase_me.x,chase_me.y,3)
		else
		{
			AI = CHILL
			if global.cursed_card = 2
			{
				sprite_index = sprSeiryu
				image_speed = 1
			}
			else
			{
				image_speed = 1
				sprite_index = sprDove
			}
		}
	}
}

if AI = RETURN
{
	if global.cursed_card = 2
	{
		if player_exists() = true
		{
			if parPlayer.x < x
				image_xscale = -1
			else
				image_xscale = 1 
		}
		sprite_index = sprSeiryu
		image_speed = 1
	}
	else
	{
		sprite_index = sprDoveAttack
		image_speed = 0
		image_index = 1
	}
	
	if player_exists() = true && instance_number(objSimon) > 0
	{
		move_towards_point(parPlayer.x,parPlayer.y,3)
		if abs( x - parPlayer.x ) < 32 && abs (y - parPlayer.y ) < 32
		{
			ai_lap()
			AI = CHILL
		}
	}
}

