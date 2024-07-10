/// @description inherit then make unique!
event_inherited();
can_leave = true
hp = 1

ai_step = 0
counter = 0

scrPhysicsInit()

move_towards_point(parPlayer.x,parPlayer.y,3)
xspeed = hspeed
yspeed = vspeed
image_angle = round(direction/90) * 90
speed = 0

bitsound(sndMeteorDash)

depth = -1

