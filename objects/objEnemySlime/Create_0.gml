/// @description inherit then make unique!
event_inherited();
name = "Slime"
hp = 1

ai_step = 0
counter = 0

AI = 0
	CHILL = 0
	HOP = 1
	SWAP = 2
	
flavor = irandom(3)
if flavor = 0
	sprite_set(sprSlimeBlueberry,0)
if flavor = 1
	sprite_set(sprSlimeGrape,0)
if flavor = 2
	sprite_set(sprSlimePeanutButter,0)
if flavor = 3
	sprite_set(sprSlimeStrawberry,0)
	
scrPhysicsInit()
yspeed_accel = 0.1 + ( 0.1 * flavor )

enemy_number = 9