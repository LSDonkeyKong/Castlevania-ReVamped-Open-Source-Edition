/// @description move on
scrControls()

if kAccept or kCancel or kPause or kMap
{
	instance_create(x,y,objFadeOutShutter)
	room_goto(rmTitle)
}