/// @description inherit then make unique!
event_inherited();
can_leave = true
hp = 1

ai_step = 0
counter = 0

scrPhysicsInit()

face_player(0)

move_towards_point(parPlayer.x,parPlayer.y,4)

xspeed = hspeed
yspeed = vspeed

speed = 0

i_frames = 4

bitsound(sndMeteorDash)

//damage = 2