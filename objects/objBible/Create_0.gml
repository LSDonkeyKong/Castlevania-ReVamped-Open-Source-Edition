/// @description inhert n shit
event_inherited();
damage = 2
image_speed = 0
image_index = 0
alarm[0] = 2
alarm[1] = 1
depth = -1

alarm[2] = 180
//lasts 1 second longer with bible card
if global.bible_card = 2
	alarm[2] = 240
	
scrPhysicsInit()

x_origin = x
y_origin = y

instance_create(x,y,objBibleCircle)