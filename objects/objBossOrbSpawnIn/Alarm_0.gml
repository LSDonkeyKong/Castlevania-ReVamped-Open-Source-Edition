/// @description stop sound, drop orb
instance_create(x,y,objItemBossOrb)
audio_stop_sound(sndPickupOrb)
dropped = true
visible = false
//instance_destroy()