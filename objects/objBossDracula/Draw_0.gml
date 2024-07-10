/// @description
event_inherited();

flash_counter += 1

if flash_counter > 20
	flash_counter = 0

if ( AI = SHOOT && flash_counter < 15 && i_frames == 0 )  or ( AI = APPEAR && counter > 15 && flash_counter < 10 && i_frames == 0 )
{
	if fireball = RED
		draw_palette(palGlobalBright,1)
	
	if fireball = ORANGE
		draw_palette(palGlobalBright,2)
	
	if fireball = YELLOW
		draw_palette(palGlobalBright,3)
	
	if fireball = GREEN
		draw_palette(palGlobalBright,4)
	
	if fireball = BLUE
		draw_palette(palGlobalBright,5)

	if fireball = PURPLE
		draw_palette(palGlobalBright,7)
}