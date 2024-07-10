/// @description inherit then make unique!
event_inherited();
can_leave = true
hp = 1

ai_step = 0
counter = 0

scrPhysicsInit()
if instance_number(objBossCthulu) > 0
	image_xscale = objBossCthulu.image_xscale
xspeed = image_xscale * 8

scrViewData()

y = yview + hview - 32

bitsound(sndThunder)