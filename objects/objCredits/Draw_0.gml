/// @description draw the credits
credits()

draw_set_font(fntHUD)
draw_set_halign(fa_center)
nes_colors()

draw_text_outline(x,round(y),nes_red,c_white,credits_text)

//draw_text(32,0,y)

depth = -99999999