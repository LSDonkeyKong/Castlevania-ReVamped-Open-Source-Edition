/// @description speen
direction += 20 //12
if speed < 10
	speed += 0.05
//scrub much more carefully if you have the bible card on
if global.bible_card = 2
	direction -= 5

/*if instance_number(objPlayerStalker) > 0
{
	scrDefyPhysics()
	xspeed = objPlayerStalker.xspeed
	yspeed = objPlayerStalker.yspeed
}*/

if player_exists() repeat(16)
{
	if x_origin < parPlayer.x
	{
		x_origin += 1
		x += 1
	}
	if x_origin > parPlayer.x
	{
		x_origin -= 1
		x -= 1
	}
	if y_origin < parPlayer.y
	{
		y_origin += 1
		y += 1
	}
	if y_origin > parPlayer.y
	{
		y_origin -= 1
		y -= 1
	}
} 