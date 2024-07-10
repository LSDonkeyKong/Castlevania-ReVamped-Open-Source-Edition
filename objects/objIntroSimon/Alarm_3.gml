/// @description begin the game
instance_activate_all()
if !global.boss_rush
	room_goto(entFrontGate)
else
	room_goto(bosBossRush0)
instance_create(x,y,objFadeInShutter)