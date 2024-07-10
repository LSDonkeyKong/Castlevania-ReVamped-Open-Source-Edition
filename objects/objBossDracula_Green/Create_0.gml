/// @description inherit then make unique!
event_inherited();
can_leave = true
hp = 1

ai_step = 0
counter = 0

scrPhysicsInit()

face_player(0)

xspeed = image_xscale * 2

yspeed = -2 - random(6)
yspeed_accel = 0.2

i_frames = 4

bitsound(sndMeteorDash)

//damage = 2