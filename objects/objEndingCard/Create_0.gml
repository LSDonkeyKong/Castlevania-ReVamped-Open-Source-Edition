/// @description setup
image_speed = 0

grow = true
shrink = false

image_xscale = 0
image_yscale = 0

bitBGM(bgmLullabySentToTheDevil)

//standard ending
ds_map_replace(global.gallery,"ending0",2)
image_index = 0
//100% ending
if global.collection >= 100
{
	ds_map_replace(global.gallery,"ending1",2)
	image_index = 1
}
//speedrun ending
if global.hours < 2 or (global.hours = 2 && global.minutes = 0)
{
	ds_map_replace(global.gallery,"ending2",2)
	image_index = 2
}
//low% ending
if global.collection <= 15
{
	ds_map_replace(global.gallery,"ending3",2)
	image_index = 3
}

ds_map_secure_save(global.gallery,"Castlevania_Endings.sav")

instance_create(x,y,objFadeInShutter)