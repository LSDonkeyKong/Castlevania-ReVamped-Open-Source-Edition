/// @description emit sparkles
if !place_meeting(x,y,parSolid)
	instance_create(x-12+irandom(24),y-12+irandom(24),objBoomerangFX1)
alarm[0] = 5