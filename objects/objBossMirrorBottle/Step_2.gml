/// @description DUMMY AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	scrPhysics()
	image_speed = 1 //always set image_speed since timestop AND i_frames freeze it
	if place_meeting(x,y+1,parSolid)
	{
		bitsound(sndWeaponHolyWater)
		instance_create(x,y,objBossMirrorFlame)
		instance_destroy()
	}
}