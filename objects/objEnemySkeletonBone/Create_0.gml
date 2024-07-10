/// @description inherit then make unique!
event_inherited();
can_leave = true
hp = 1

ai_step = 0
counter = 0

scrPhysicsInit()
yspeed_accel = 0.2

face_player(0)

yspeed = -5
xspeed = ( image_xscale * 0.5 ) + ( image_xscale * random(3) )

bitsound(sndWeaponKnife)