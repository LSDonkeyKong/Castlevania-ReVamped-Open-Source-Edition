/// @description inherit then make unique!
event_inherited();
can_leave = true
hp = 1

ai_step = 0
counter = 0

face_player(0)
	
scrPhysicsInit()
xspeed = 2.25 * image_xscale
yspeed = -6
if parPlayer.y > y 
	yspeed = -2

bitsound(sndWeaponAxe)

fallspeed = 6