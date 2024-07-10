/// @description sprite assign + lose gold
scrPlayerSprites()
sprite_index = sHurt
image_speed = 1
alarm[0] = 300
alarm[2] = 5

audio_stop_all()
bitfanfare(bgmFanfarePlayerMiss)

if global.richard
	alarm[3] = 30

if global.vibration input_vibrate_constant(0.8,0,120)