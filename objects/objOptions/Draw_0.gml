/// @description the menu
scrViewData()
draw_set_font(fntMessage)
draw_set_halign(fa_left)
draw_set_color(c_white)
nes_colors()

vibratetext = "";

if global.volumeBGM = undefined
	global.volumeBGM = 1
if global.volumeSFX = undefined
	global.volumeSFX = 1
if global.vibration = undefined
	global.vibration = true
	
if ds_map_find_value(global.options,"windowscale") = undefined
		ds_map_replace(global.options,"windowscale",1)
if ds_map_find_value(global.options,"fullscreen") = undefined
		ds_map_replace(global.options,"fullscreen",false)
		
windowtext = "Window Scale - " + string(ds_map_find_value(global.options,"windowscale"))
fullscreentext = "Fullscreen - [Off]   On "
if ds_map_find_value(global.options,"fullscreen") = true
	fullscreentext = "Fullscreen -  Off   [On]"
	
SFXtext = "SFX Volume - " + string( round(global.volumeSFX * 100) ) + "%"
BGMtext = "BGM Volume - " + string( round(global.volumeBGM * 100) ) + "%"

if global.vibration
	vibratetext = "Vibration -  Off   [On]"
else
	vibratetext = "Vibration - [Off]   On "

if global.crt
	crttext = "CRT Filter -  Off   [On]"
else
	crttext = "CRT Filter - [Off]   On "

draw_text(x,y,SFXtext)
draw_text(x,y + 16,BGMtext)
draw_text(x,y + 32,vibratetext)
draw_text(x,y + 48,"Game Input Settings")
draw_text(x,y + 64,"Menu Input Settings")
draw_text(x,y + 80,"Restore Defaults")
draw_text(x,y + 96,"Credits")
draw_text(x,y + 112,windowtext)
draw_text(x,y + 128,fullscreentext)
draw_text(x,y + 144,crttext)
draw_text(x,y + 160,"Back")

draw_set_color(nes_yellow)

if selection = 0
	draw_text(x,y,SFXtext)
if selection = 1
	draw_text(x,y + 16,BGMtext)
if selection = 2
	draw_text(x,y + 32,vibratetext)
if selection = 3
	draw_text(x,y + 48,"Game Input Settings")
if selection = 4
	draw_text(x,y + 64,"Menu Input Settings")
if selection = 5
	draw_text(x,y + 80,"Restore Defaults")
if selection = 6
	draw_text(x,y + 96,"Credits")
if selection = 7
	draw_text(x,y + 112,windowtext)
if selection = 8
	draw_text(x,y + 128,fullscreentext)
if selection = 9
	draw_text(x,y + 144,crttext)
if selection = 10
	draw_text(x,y + 160,"Back")
