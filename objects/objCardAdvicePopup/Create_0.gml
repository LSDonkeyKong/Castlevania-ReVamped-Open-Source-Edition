/// @description setup shit
vspeed = -4
chance = irandom(4)
if chance = 0
	text = @"Equip cards at 
a Save Point!"
if chance = 1
	text = @"You can have up to
3 cards on at once!"
if chance = 2
	text = @"Some cards require other 
abilities to function!"
if chance = 3 && global.area != 10
	text = @"A Save Point is
below this room!"
if chance = 3 && global.area == 10
	text = @"A Save Point is
left of this room!"
if chance = 4
	text = @"Whip me to browse
the cards I sell!"

bitsound(sndThudWet)
