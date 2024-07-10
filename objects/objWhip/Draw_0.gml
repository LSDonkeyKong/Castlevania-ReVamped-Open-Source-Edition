/// @description draw on player and shit or go away
if player_exists() = true
{
	counter += 0.5
			
	if floor(counter)/2 != round(floor(counter)/2) && global.current_whip > 1 && parPlayer.whip_out
	{
		if !parPlayer.ducking
			draw_sprite_ext(sprite_index,frame_count(),parPlayer.x,parPlayer.y,parPlayer.facing,1,0,image_blend,1)
		else
			draw_sprite_ext(sprite_index,frame_count(),parPlayer.x,parPlayer.y + 8,parPlayer.facing,1,0,image_blend,1)
	}
	
	if floor(counter)/2 = round(floor(counter)/2) or global.current_whip <= 1 or !parPlayer.whip_out//if counter < countamount or global.current_whip <= 1
	{
		if !parPlayer.ducking
			draw_sprite_ext(sprite_index,parPlayer.image_index,parPlayer.x,parPlayer.y,parPlayer.facing,1,0,image_blend,1)
		else
			draw_sprite_ext(sprite_index,parPlayer.image_index,parPlayer.x,parPlayer.y + 8,parPlayer.facing,1,0,image_blend,1)
	}
	
	/*
	countamount = 20
	if global.current_whip = 2
		countamount = 20
	if global.current_whip = 3
		countamount = 20
	if global.current_whip = 4
		countamount = 20
	counter += 1
		
	if global.current_whip > 1 && counter >= countamount
	{
		if !parPlayer.ducking
			draw_sprite_ext(sprite_index,frame_count(),parPlayer.x,parPlayer.y,parPlayer.facing,1,0,image_blend,1)
		else
			draw_sprite_ext(sprite_index,frame_count(),parPlayer.x,parPlayer.y + 8,parPlayer.facing,1,0,image_blend,1)
	}
	*/
}
else
	instance_destroy()