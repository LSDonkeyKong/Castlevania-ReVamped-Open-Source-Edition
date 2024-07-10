function instance_create(inst_x, inst_y, instance)
{
	instance_create_depth(argument0,argument1,0,argument2)
}

function scrViewData()
{/// @function scrViewData();
	xview = camera_get_view_x(view_camera)
	yview = camera_get_view_y(view_camera)
	wview = camera_get_view_width(view_camera)
	hview = camera_get_view_height(view_camera)
	windowscale = 1 //ds_map_find_value(global.options,"windowscale")
}

function frame_count()
{
	return ( sprite_get_number(sprite_index) - 1 );
}

function sprite_set(sprite, img_speed)
{
	sprite_index = argument0
	image_speed = argument1
}

function nes_colors()
{
	nes_red = make_color_rgb(219,44,1)
	nes_yellow = make_color_rgb(242,191,63)
	nes_blue = make_color_rgb(0,116,237)
	nes_green = make_color_rgb(0,169,2)
}

function draw_text_outline(text_x, text_y, out_color, text_color, String)
{
	storedcolor = draw_get_color()
	
	draw_set_color(argument2)
	draw_text_scribble(argument0 - 1, argument1, argument4)
	draw_text_scribble(argument0 - 1, argument1 - 1, argument4)
	draw_text_scribble(argument0 - 1, argument1 + 1, argument4)
	draw_text_scribble(argument0, argument1 - 1, argument4)
	draw_text_scribble(argument0, argument1 + 1, argument4)
	draw_text_scribble(argument0 - 1, argument1, argument4)
	draw_text_scribble(argument0 + 1, argument1, argument4)
	draw_text_scribble(argument0 + 1, argument1 + 1, argument4)
	draw_text_scribble(argument0 + 1, argument1 - 1, argument4)
	
	draw_set_color(argument3)
	draw_text_scribble(argument0, argument1, argument4)
	
	draw_set_color(storedcolor)
}

function deactivate()
{
	instance_deactivate_all(true)
	instance_activate_object(input_controller_object)
	instance_activate_object(objCRTFilter)
	instance_activate_object(objSpiciness)
}

function draw_sprite_tiled_area(sprite_id,subimg_id,x_origin,y_origin,x_topleft,y_topleft,x_bottomright,y_bottomright)
{
    var sprite,subimg,xx,yy,x1,y1,x2,y2;
    sprite = argument0;
    subimg = argument1;
    xx = argument2;
    yy = argument3;
    x1 = argument4;
    y1 = argument5;
    x2 = argument6;
    y2 = argument7;
 
    var sw,sh,i,j,jj,left,top,width,height,X,Y;
    sw = sprite_get_width(sprite);
    sh = sprite_get_height(sprite);
 
    i = x1-((x1 mod sw) - (xx mod sw)) - sw*((x1 mod sw)<(xx mod sw));
    j = y1-((y1 mod sh) - (yy mod sh)) - sh*((y1 mod sh)<(yy mod sh)); 
    jj = j;
 
    for(i=i; i<=x2; i+=sw) {
        for(j=j; j<=y2; j+=sh) {
 
            if(i <= x1) left = x1-i;
            else left = 0;
            X = i+left;
 
            if(j <= y1) top = y1-j;
            else top = 0;
            Y = j+top;
 
            if(x2 <= i+sw) width = ((sw)-(i+sw-x2)+1)-left;
            else width = sw-left;
 
            if(y2 <= j+sh) height = ((sh)-(j+sh-y2)+1)-top;
            else height = sh-top;
 
            draw_sprite_part(sprite,subimg,left,top,width,height,X,Y);
        }
        j = jj;
    }
    return 0;
}

function title_screen()
{
	//if global.savedata != undefined
	//	ds_map_destroy(global.savedata)
	audio_stop_all()
	instance_destroy(parPlayer)
	instance_destroy(objGame)
	instance_destroy(parMap)
	instance_destroy(objBestiaryEntry)
	instance_destroy(parPlayer)
	instance_destroy(parWeapon)
	instance_destroy(objCamera)
	instance_destroy(objMusicController)
	instance_destroy(objInitialize)
	instance_destroy(objSaveWarpSystem)
	room_goto(rmInit)
}