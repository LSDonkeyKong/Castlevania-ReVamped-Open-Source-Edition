/// @description reflect
flasher += 1

depth = 16

if instance_number(objBossMirrorMonster) = 0 && instance_number(parPlayer) > 0 && flasher/2 = round(flasher/2)
	draw_sprite_ext(parPlayer.sprite_index,parPlayer.image_index,parPlayer.x,parPlayer.y - 24,parPlayer.image_xscale,parPlayer.image_yscale,parPlayer.image_angle,c_white,1)
