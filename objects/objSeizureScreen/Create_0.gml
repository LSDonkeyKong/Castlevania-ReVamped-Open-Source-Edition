/// @description setup
with( instance_create_depth(x,y,0,objFadeInShutter) )
	image_speed = 0.25
	
seizure_message = @"WARNING
This game contains flashing lights, patterns, and shaking effects that may cause seizures or blackouts in certain individuals.
Stop playing if you experience altered vision, muscle or eye twitching, loss of awareness or disorientation."

fawnt = fntMessage