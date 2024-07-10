/// @description inherit then make unique!
event_inherited();
can_leave = true
hp = 1

ai_step = 0
counter = 0

scrPhysicsInit()
yspeed_accel = 0.1
fallspeed = 8

yspeed = -2 - random(4)
face_player(0)
xspeed = image_xscale * 2

bounce_count = 0