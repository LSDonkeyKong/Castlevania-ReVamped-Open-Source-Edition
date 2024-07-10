/// @description inherit then make unique!
event_inherited();
can_leave = true
hp = 1

ai_step = 0
counter = 0

scrPhysicsInit()
yspeed_accel = 0.1

yspeed = -irandom(3)

face_player(0)

xspeed = irandom(4) * image_xscale

bitsound(sndMeteorDash)

damage = 2