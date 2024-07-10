/// @description re-activate + delete screen sprite
if sprite_exists(screen_sprite)
	sprite_delete(screen_sprite)
	
audio_stop_sound(bgmFanfareItem)
audio_resume_all()
instance_activate_all()