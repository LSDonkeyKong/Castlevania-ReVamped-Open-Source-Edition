/// @description draw a white subweapon
flash += 1
if flash/2 = round(flash/2)
	current_pal = 7
else
	current_pal = 8

draw_palette(palGlobal,current_pal)