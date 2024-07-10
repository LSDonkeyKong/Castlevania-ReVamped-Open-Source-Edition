/// @description inherit then make unique!
event_inherited();
hp = 1

ai_step = 0
counter = 0

scrPhysicsInit()

move_towards_point(parPlayer.x,parPlayer.y,2.5)
xspeed = hspeed
yspeed = vspeed
speed = 0

bitsound(sndMeteorDash)

depth = -1

