/// @description draw le menu
scrViewData()

if sprite_exists(global.screen_sprite) draw_sprite_ext(global.screen_sprite,0,xview,yview,1/windowscale,1/windowscale,0,c_white,1) //draw_sprite_ext(screen_sprite,0,xview,yview,wview/view_wport[0],hview/view_hport,0,c_white,1)
draw_sprite_tiled(sprSpriteShutters,4,xview,yview)

depth = -999999

draw_set_font(fntMessage)

nes_colors()

if list_string != 0
{
	if selection <= 8
		selector_x = 40 * selection
	else
		selector_x = 40 * (selection - 9)
		
	selector_y = 0
	if selection > 8
		selector_y = 56
	
	draw_sprite( sprCards,knife_status,xview + 20 + ( 0 * 40) ,yview + 24 )
	draw_sprite( sprCards,axe_status,xview + 20 + ( 1 * 40) ,yview + 24 )
	draw_sprite( sprCards,holywater_status,xview + 20 + ( 2 * 40) ,yview + 24 )
	draw_sprite( sprCards,bible_status,xview + 20 + ( 3 * 40) ,yview + 24 )
	draw_sprite( sprCards,boomerang_status,xview + 20 + ( 4 * 40) ,yview + 24 )
	draw_sprite( sprCards,rosary_status,xview + 20 + ( 5 * 40) ,yview + 24 )
	draw_sprite( sprCards,stopwatch_status,xview + 20 + ( 6 * 40) ,yview + 24 )
	draw_sprite( sprCards,laurel_status,xview + 20 + ( 7 * 40) ,yview + 24 )
	draw_sprite( sprCards,healingstrike_status,xview + 20 + ( 8 * 40) ,yview + 24 )
	
	draw_sprite( sprCards,cardiacstrike_status,xview + 20 + ( 0 * 40) ,yview + 24 + 56 )
	draw_sprite( sprCards,heartdiscount_status,xview + 20 + ( 1 * 40) ,yview + 24 + 56 )
	draw_sprite( sprCards,critical_status,xview + 20 + ( 2 * 40) ,yview + 24 + 56 )
	draw_sprite( sprCards,blazingstride_status,xview + 20 + ( 3 * 40) ,yview + 24 + 56 )
	draw_sprite( sprCards,phaseslide_status,xview + 20 + ( 4 * 40) ,yview + 24 + 56 )
	draw_sprite( sprCards,meteordash_status,xview + 20 + ( 5 * 40) ,yview + 24 + 56 )
	draw_sprite( sprCards,arsenalswap_status,xview + 20 + ( 6 * 40) ,yview + 24 + 56 )
	draw_sprite( sprCards,kinship_status,xview + 20 + ( 7 * 40) ,yview + 24 + 56 )
	draw_sprite( sprCards,cursed_status,xview + 20 + ( 8 * 40) ,yview + 24 + 56 )

	
	draw_sprite( sprCardSelector,0,xview + 20 + selector_x ,yview + 24 + (selector_y) )
	
	draw_set_halign(fa_center)
	if can_change
		draw_text_outline(xview + (wview/2),yview + 8,c_white,nes_yellow,"-Enchanted Cards-")
	else
		draw_text_outline(xview + (wview/2),yview + 8,c_white,nes_red,"-Cards must be equipped at a Save Point!-")
	
	draw_set_halign(fa_center)
	draw_text_outline(xview + (wview/2),yview + 144,c_black,nes_yellow,active_string)
	draw_set_color(c_white)
	draw_text_ext(xview + (wview/2),yview + 160,card_string,9,400-16)
	draw_set_halign(fa_left)
}