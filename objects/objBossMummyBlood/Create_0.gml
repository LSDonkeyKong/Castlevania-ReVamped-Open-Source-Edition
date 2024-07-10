/// @description inherit then make unique!
event_inherited();
can_leave = true
hp = 1

ai_step = 0
counter = 0

scrPhysicsInit()
yspeed_accel = 0.05
yspeed = -1 - random(3)
xspeed = ( -1 + irandom(2) ) * 2.5