/// @description
scrViewData()
nes_colors()

//if sprite_exists(global.screen_sprite) draw_sprite_ext(global.screen_sprite,0,xview,yview,1/windowscale,1/windowscale,0,c_white,1) //draw_sprite_ext(screen_sprite,0,xview,yview,wview/view_wport[0],hview/view_hport,0,c_white,1)
//draw_sprite_tiled(sprSpriteShutters,3,xview,yview)

depth = -999999

draw_set_halign(fa_center)
draw_set_font(fntMessage)

draw_text_outline( xview + (wview/2),yview + 8,c_black,nes_yellow,"Castlevania Warp System\n" + "Gold: $" + string(global.gold) + "\n" + "Warp Price: $" + string(warp_cost) )
draw_text_outline(xview + 200,yview + 180,c_black,c_white,"< " + selected_string + " >")


draw_set_halign(fa_left)
//draw_text_outline(xview + 16,yview + 40,c_black,c_white,list_string)

//draw_sprite( sprItemHeart,0,xview + 8 + 4, yview + 40 + 4 + (selection * 16) )

//draw the map i drew
if (warp_cost != 0 && flash/2 = round(flash/2) ) //or (destination = room && flash/2 = round(flash/2) )
	draw_sprite(sprMapArea,selection + 1,xview + global.mapoff_x,yview + global.mapoff_y)