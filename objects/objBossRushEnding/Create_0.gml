/// @description setup
deactivate()
bitBGM(bgmLullabySentToTheDevil)
instance_create(x,y,objFadeInShutter)

if global.hours < 10
		hourtext = "0" + string(global.hours) + ":"
	else
		hourtext = string(global.hours) + ":"
	if global.minutes < 10
		minutetext = "0" + string(global.minutes) + ":"
	else
		minutetext = string(global.minutes) + ":"
	if global.seconds < 10
		secondtext = "0" + string(global.seconds)
	else
		secondtext = string(global.seconds)
		
record = string(hourtext) + string(minutetext) + string(secondtext) + "\n$" + string(global.gold)
record_secs = (global.hours * 3600) + (global.minutes * 60) + global.seconds - round(global.gold / 3)//30 for 500 secs max, 3 for 5000

new_record = false
if record_secs < ds_map_find_value(global.gallery,"record_secs")
	new_record = true
	
if new_record
{
	ds_map_replace( global.gallery,"record_secs",record_secs )
	ds_map_replace( global.gallery,"record",string(record) )	
	alarm[0] = 120 + 45
}

ds_map_secure_save( global.gallery,"Castlevania_Endings.sav" )

congrats = false

visible = false
alarm[1] = 45