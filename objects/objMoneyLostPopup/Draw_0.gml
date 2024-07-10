/// @description draw the woooorrrds
nes_colors()
draw_set_font(fntMessage)
draw_set_halign(fa_center)
depth = -999

money_text = "-$" + string(bag)

draw_text_outline(round(x),round(y),c_black,nes_red,money_text)