/// @description inherit then make unique!
event_inherited();
can_leave = true
hp = 1

ai_step = 0
counter = 0

scrPhysicsInit()

direction = global.sickle_dir
speed = 4

xspeed = hspeed
yspeed = vspeed
speed = 0

image_index = random(3)

bitsound(sndWeaponKnife)