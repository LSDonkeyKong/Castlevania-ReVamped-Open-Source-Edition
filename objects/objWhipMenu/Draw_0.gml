/// @description
depth = -999999
scrViewData()
nes_colors()

draw_set_font(fntHUD)

draw_sprite_ext(screen_sprite,0,xview,yview,1/windowscale,1/windowscale,0,c_white,1) //draw_sprite_ext(screen_sprite,0,xview,yview,wview/view_wport[0],hview/view_hport,0,c_white,1)
draw_sprite_tiled(sprSpriteShutters,4,xview,yview)

draw_set_halign(fa_center)
draw_set_color(c_white)
draw_text_outline( xview + 200,yview + 200,c_black,c_white,"Press a direction to choose a whip\n or press " + input_verb_get_icon("swap") + " to cancel selection. " )

//draw arrows
draw_sprite( sprite_index,image_index,xview+(wview/2),yview+(hview/2) )

//draw whips
if !global.morningstar
	draw_sprite( sprWhipMenuAssets,0,xview+(wview/2),yview+(hview/2) - 32 )
else
	draw_sprite( sprWhipMenuAssets,1,xview+(wview/2),yview+(hview/2) - 32 )
	
if global.flame_whip
	draw_sprite( sprWhipMenuAssets,2,xview+(wview/2) + 32 ,yview+(hview/2) )
else
	draw_sprite( sprWhipMenuAssets,5,xview+(wview/2) + 32 ,yview+(hview/2) )
	
if global.ice_whip
	draw_sprite( sprWhipMenuAssets,3,xview+(wview/2),yview+(hview/2) + 32  )
else
	draw_sprite( sprWhipMenuAssets,5,xview+(wview/2),yview+(hview/2) + 32  )
	
if global.thunder_whip
	draw_sprite( sprWhipMenuAssets,4,xview+(wview/2) - 32 ,yview+(hview/2) )
else
	draw_sprite( sprWhipMenuAssets,5,xview+(wview/2) - 32 ,yview+(hview/2) )
	
counter += 1

//draw selected whip
if ( counter/4 != round(counter/4) ) or !selected
{
	if global.current_whip = 0
		draw_sprite( sprWhipMenuAssets,6,xview+(wview/2),yview+(hview/2) - 32 )

	if global.current_whip = 1
		draw_sprite( sprWhipMenuAssets,7,xview+(wview/2),yview+(hview/2) - 32 )

	if global.current_whip = 2
		draw_sprite( sprWhipMenuAssets,8,xview+(wview/2) + 32 ,yview+(hview/2) )
	
	if global.current_whip = 3
		draw_sprite( sprWhipMenuAssets,9,xview+(wview/2),yview+(hview/2) + 32  )
	
	if global.current_whip = 4
		draw_sprite( sprWhipMenuAssets,10,xview+(wview/2) - 32 ,yview+(hview/2) )
}

//draw current whip's text
if global.current_whip = 0
	draw_text_outline( xview+(wview/2),yview+(hview/2) - 72,c_black,c_white,"Leather Whip" )
	
if global.current_whip = 1
	draw_text_outline( xview+(wview/2),yview+(hview/2) - 72,c_black,c_white,"Morningstar Whip" )
	
if global.current_whip = 2
	draw_text_outline( xview+(wview/2),yview+(hview/2) - 72,c_black,nes_red,"Flame Whip" )
	
if global.current_whip = 3
	draw_text_outline( xview+(wview/2),yview+(hview/2) - 72,c_black,nes_blue,"Frost Whip" )
	
if global.current_whip = 4
	draw_text_outline( xview+(wview/2),yview+(hview/2) - 72,c_black,nes_yellow,"Thunder Whip" )

draw_set_halign(fa_left)