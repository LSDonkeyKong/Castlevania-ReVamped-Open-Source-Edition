/// @description inherit then make unique!
event_inherited();
can_leave = true
hp = 1

ai_step = 0
counter = 0

face_player(0)

scrPhysicsInit()

i_frames = 4

bitsound(sndMeteorDash)

y += 32

y -= irandom(64)

//damage = 2