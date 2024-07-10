/// @description setup
sprite_set(sprAreaDoor,0)
	
if x < room_width/2
	image_xscale = -1
	
if place_meeting(x,y,parPlayer)
	sprite_set(sprAreaDoorClose,1)
	
depth = 15