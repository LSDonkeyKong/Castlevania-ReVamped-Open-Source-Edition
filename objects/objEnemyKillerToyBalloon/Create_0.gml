/// @description inherit then make unique!
event_inherited();
name = "Killer Toy"
hp = 1

ai_step = 0
counter = 0

can_leave = true

image_index = irandom(2)

scrPhysicsInit()

scrViewData()

x = xview + irandom(wview)
y = yview + hview + 8

enemy_number = 33