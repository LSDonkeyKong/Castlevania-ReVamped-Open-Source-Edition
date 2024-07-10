/// @description inherit then make unique!
event_inherited();
can_leave = true
hp = 1

ai_step = 0
counter = 0

scrPhysicsInit()
face_player(0)

xspeed = random(3) * image_xscale

i_frames = 4

bitsound(sndMeteorDash)

//damage = 2