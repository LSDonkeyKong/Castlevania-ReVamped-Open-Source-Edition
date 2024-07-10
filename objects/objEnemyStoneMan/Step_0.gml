/// @description multiply
if i_frames = 1 
{
	bitsound(sndBlockBreak)
	repeat(5)
		instance_create(x,y,objDebris)
	xspeed = 0
	//face_player(0)
	//image_xscale *= -1
	if hp <= 24 && sprite_index = sprStoneManA
		scrStoneManMultiply()
	if hp <= 16 && sprite_index = sprStoneManB
		scrStoneManMultiply()
	if hp <= 8 && sprite_index = sprStoneManC
		scrStoneManMultiply()
}