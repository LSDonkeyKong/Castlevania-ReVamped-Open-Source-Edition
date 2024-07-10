/// @description draw the box, dummy!
scrViewData()
draw_sprite_ext(screen_sprite,0,xview,yview,1/windowscale,1/windowscale,0,c_white,1) //draw_sprite_ext(screen_sprite,0,xview,yview,wview/view_wport[0],hview/view_hport,0,c_white,1)
draw_sprite_ext(sprBlackout,0,xview + (wview/2), yview + (hview/2) - 48 ,box_xscale,2,0,c_white,1)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_set_font(fntMessage)
draw_set_color(c_white)

if box_xscale = 12.5
	draw_text_scribble_ext(xview + (wview/2), yview + (hview/2) - 48,global.message_box,384)

//reset valign for other objects!
draw_set_valign(fa_top)

depth = -9999999