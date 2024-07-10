/// @description draw the shit
depth = -100
if player_exists() = true
{
	draw_sprite_ext(sprSubWatch,0,parPlayer.x,parPlayer.y - 32 + bob,1,1,0,c_white,1)
	draw_sprite_ext(sprSubWatchCount,ceil(global.timestop/60),parPlayer.x + 12,parPlayer.y - 32,1,1,0,c_white,1)
}
else
	instance_destroy()
