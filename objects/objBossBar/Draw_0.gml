/// @description BOSS BARS BABY
scrViewData()
x = xview + (wview/2)
y = yview + hview - 8

//bottle caps
//draw_sprite_ext(sprite_index,2,x,y,max_width,1,0,c_white,1)

//tube
draw_sprite_ext(sprite_index,1,x,y,max_width,1,0,c_white,1)

//actual health
if image_xscale <= half_hp/5//draw red health when they're at half
	draw_sprite_ext(sprite_index,3,x,y,image_xscale,1,0,c_white,1)
else//draw yellow health from start
	draw_sprite_ext(sprite_index,0,x,y,image_xscale,1,0,c_white,1)