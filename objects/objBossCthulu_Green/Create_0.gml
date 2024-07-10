/// @description inherit then make unique!
event_inherited();
can_leave = true
hp = 1

ai_step = 0
counter = 0

scrPhysicsInit()

move_towards_point(parPlayer.x,parPlayer.y,4)

direction += -30 + irandom(60)

xspeed = hspeed
yspeed = vspeed
image_angle = direction
speed = 0

bitsound(sndWaterSplash)