/// @description unclip out of blocks
event_inherited();

repeat(24) if place_meeting(x,y,objBlock) or place_meeting(x,y,objBlockStairR) or place_meeting(x,y,objBlockStairL)
{
	if parPlayer.y < y
		y -= 1
	else
		y+= 1
		
	visible = true
}