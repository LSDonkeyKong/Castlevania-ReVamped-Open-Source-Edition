/// @description fall and shit
scrPhysics()
xspeed *= 0.9
counter += 1
if counter >= 120
{
	if tossed = 1
		instance_change(objItemSubKnife,true)
	if tossed = 2
		instance_change(objItemSubAxe,true)
	if tossed = 3
		instance_change(objItemSubHolyWater,true)
	if tossed = 4
		instance_change(objItemSubBible,true)
	if tossed = 5
		instance_change(objItemSubBoomerang,true)
	if tossed = 6
		instance_change(objItemSubRosary,true)
	if tossed = 7
		instance_change(objItemSubWatch,true)
	if tossed = 8
		instance_change(objItemSubLaurel,true)
	yspeed = 0
}
else
{
	if tossed = 1
		sprite_set(sprItemKnife,1)
	if tossed = 2
		sprite_set(sprItemAxe,1)
	if tossed = 3
		sprite_set(sprItemHolyWater,1)
	if tossed = 4
		sprite_set(sprItemBible,1)
	if tossed = 5
		sprite_set(sprItemBoomerang,1)
	if tossed = 6
		sprite_set(sprItemRosary,1)
	if tossed = 7
		sprite_set(sprItemWatch,1)
	if tossed = 8
		sprite_set(sprItemLaurel,1)
}

if tossed = 0
	instance_destroy()