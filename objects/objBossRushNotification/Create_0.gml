/// @description setup
ds_map_replace(global.gallery,"bossrush",1)
ds_map_secure_save(global.gallery,"Castlevania_Endings.sav")

counter = 0

audio_stop_all()

instance_create(x,y,objFadeInShutter)