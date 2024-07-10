/// @description setup
shake = 0
done = false
deactivate()
instance_activate_object(parEnding)
audio_stop_all()

alarm[1] = 10

instance_create(x,y,objEarthquake)

instance_create(x,y,objFadeInShutter)