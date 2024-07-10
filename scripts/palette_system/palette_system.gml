function draw_palette(PaletteSprite, PaletteNumber)
{
	/// @function draw_palette(PaletteSprite, PaletteNumber);
	//black outline
	
	xscale = image_xscale
	yscale = image_yscale

	if visible=true
		{
		    draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, c_white, image_alpha);
		    pal_swap_set(argument0,argument1,0);  
		    draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, c_white, image_alpha);
		    pal_swap_reset() 
		}
}
	
function draw_palette_ext(PaletteSprite, PaletteNumber, drawx, drawy)
{
	/// @function draw_palette_ext(PaletteSprite, PaletteNumber,x,y);
	//black outline
	
	xscale = image_xscale
	yscale = image_yscale
		
	if visible=true
		{
		    draw_sprite_ext(sprite_index, image_index, argument2, argument3, xscale, yscale, image_angle, c_white, image_alpha);
		    pal_swap_set(argument0,argument1,0);  
		    draw_sprite_ext(sprite_index, image_index, argument2, argument3, xscale, yscale, image_angle, c_white, image_alpha);
		    pal_swap_reset() 
		}
}

function pal_swap_init_system()
	{
		///pal_swap_init_system(shader,enable indexing <optional>)
		//Initiates the palette system.  Call once at the beginning of your game somewhere.
		//---
		//Enabiling "indexing" allows you to use pal_swap_get_pal_color() which will return the rgb color
		//of the given palette.  Additionally, that palette must be indexed.  This is not really recommended,
		//but if you need it, it's there.

		globalvar Pal_Shader,Pal_Texel_Size, Pal_UVs, Pal_Index, Pal_Texture;
		Pal_Shader = argument[0];
		Pal_Texel_Size = shader_get_uniform(argument[0], "texel_size");
		Pal_UVs = shader_get_uniform(argument[0], "palette_UVs");
		Pal_Index = shader_get_uniform(argument[0], "palette_index");
		Pal_Texture = shader_get_sampler_index(argument[0], "palette_texture");

		if(argument_count>1 && argument[1])
		{
		    globalvar Pal_Map;
		    Pal_Map = ds_map_create();
		}
	}
	
function pal_swap_draw_palette(palette_sprite, pal_index, X, Y)
	{
	///@function pal_swap_draw_palette(palette_sprite,pal_index,x,y);
	//Draws only the specified palette from the given palette sprite.
	draw_sprite_part(argument[0],0,argument[1],0,1,sprite_get_height(argument[0]),argument[2],argument[3]);
	}

function pal_swap_enable_override(palsprite)
	{
	///@function pal_swap_enable_override(palsprite)
	//returns a sprite index that will be used for all pal_swap_override_color() calls and
	//creates a variable for determining if overriding is necessary.
	//Call this in the create event of any sprite you want to use overriding in.

	//****IMPORTANT****
	//This creates a COPY of your palette sprite.  You need to clean this up when you are
	//done with this object or you are going to have some issues.
	//******************

	use_override=false;
	return(sprite_duplicate(argument[0]));
	}
	
function pal_swap_get_color_count(palettespriteindex)
	{
	///@function pal_swap_get_color_count(palette sprite)
	return(sprite_get_height(argument[0]));
	}
	
function pal_swap_get_pal_color(palettespriteindex, pal_index, color)
	{
	///@function pal_swap_get_pal_color(palette sprite,pal index, color index)
	//returns the color for the given palette for the given palette sprite.

	//YOU MUST INDEX YOUR PALETTE FOR THIS TO WORK USING pal_swap_index_palette()!
	//If you are going to index a palette do it once at the beginning of your game!
	var _palettes = ds_map_find_value(Pal_Map,argument[0]);
	var _current_pal=ds_list_find_value(_palettes,argument[1]);
	return(ds_list_find_value(_current_pal,argument[2]));
	}
	
function pal_swap_get_pal_count(palettespriteindex)
	{
	///@function pal_swap_get_pal_count(palette sprite)
	//returns the number of palettes for the given sprite.
	//Useful for clamping palette selection.
	return(sprite_get_width(argument[0]));
	}
	
function pal_swap_index_palette(palettespriteindex)
	{
		///@function pal_swap_index_palette(palette sprite index)
		//indexs a palette enabling pal_swap_get_pal_color().
		//
		//This is only used if you enabled palette indexing in your pal_swap_init_system() call.
		//Allows you to use pal_swap_get_color() on any palette that has been indexed. This is slow, and
		//should only be called once per palette right after the system is indexed.
		//Again, this is not really recommended, but here's the functionality if you need it.

		if(!ds_map_exists(Pal_Map,argument[0]))
		{
		    var _spr = argument[0];
		    var _colors = sprite_get_height(_spr);
		    var _palettes = ds_list_create();
		    ds_map_add(Pal_Map,_spr,_palettes);
    
		    //Draw the palette to a surface for reading.
		    if(sprite_get_width(_spr)>1)
			    {
			        var _num = sprite_get_width(_spr);
			        var _surface = surface_create(_num,_colors);
			        surface_set_target(_surface)
			        draw_sprite(_spr,0,0,0);
			    }
    
			    //Get the Palettes
			    for(var i=0; i<_num;i++)
			    {
			        var _pal = ds_list_create();
			        for(var ii=0; ii<_colors;ii++)
			        {
			            ds_list_add(_pal,surface_getpixel(_surface,i,ii));
			        }
			        ds_list_add(_palettes,_pal);
			    }    
    
			    show_debug_message(string(_num)+" palettes indexed for sprite: "+sprite_get_name(_spr));
			    surface_reset_target();
			    surface_free(_surface);
			}
			else
			{
			    show_debug_message("That palette has already been indexed.");
			}
	}
		
function pal_swap_reset()
	{
	///@function pal_swap_reset();
	//Simple shader reset.  You can just use shader_reset if you prefer.
	shader_reset();
	}
	
function pal_swap_set(palette_sprite_index, palette_index,paletteisSurface)
	{
		///@function pal_swap_set(palette_sprite_index, palette_index,palette is surface);
		shader_set(Pal_Shader);
		var _pal_sprite=argument[0];
		var _pal_index=argument[1];

		if(!argument[2])
		{   //Using a sprite based palette

		    var tex = sprite_get_texture(_pal_sprite, 0);
		    var UVs = sprite_get_uvs(_pal_sprite, 0);
    
		    texture_set_stage(Pal_Texture, tex);
		    //texture_set_interpolation_ext(Pal_Texture, 1)
    
		    var texel_x = texture_get_texel_width(tex);
		    var texel_y = texture_get_texel_height(tex);
		    var texel_hx = texel_x * 0.5;
		    var texel_hy = texel_y * 0.5;
    
		    shader_set_uniform_f(Pal_Texel_Size, texel_x, texel_y);
		    shader_set_uniform_f(Pal_UVs, UVs[0] + texel_hx, UVs[1] + texel_hy, UVs[2] + texel_hx, UVs[3] + texel_hy);
		    shader_set_uniform_f(Pal_Index, _pal_index);
		}
		else
		{   //Using a surface based palette
		    var tex = surface_get_texture(_pal_sprite);
    
		    texture_set_stage(Pal_Texture, tex);
		    //texture_set_interpolation_ext(Pal_Texture, 1)
    
		    var texel_x = texture_get_texel_width(tex);
		    var texel_y = texture_get_texel_height(tex);
		    var texel_hx = texel_x * 0.5;
		    var texel_hy = texel_y * 0.5;
    
		    shader_set_uniform_f(Pal_Texel_Size, texel_x, texel_y);
		    shader_set_uniform_f(Pal_UVs, texel_hx, texel_hy, 1.0+texel_hx, 1.0+texel_hy);
		    shader_set_uniform_f(Pal_Index, _pal_index);
		}
	}
	
function pal_swap_set_tiles(palettesprite, palindex, startlayer, endlayer, palisSurface)
	{
		///@function pal_swap_set_tiles(palette sprite or surface, pal index, start layer, end layer, pal is surface);
		//Call this every step you want to draw the tiles palette swapped.  Stop calling it, or set the pal index to 0 to stop palette swapping.
		//Does not need to be called in a draw event.  In fact, I recommend the step event.
		var _pal_sprite = argument[0];
		var _pal_index = argument[1];

		var _low =argument[2]+1;
		var _high = argument[3]-1;
		var _is_surface = argument[4];

		if(_low<_high)
		{   //You passed the arguments in backwards, nimrod.
		    _low=argument[3]-1;
		    _high=argument[2]+1;
		    //Sorry.  It's not really a big deal.  If it makes you feel better, Nimrod was actually a mighty warrior.
		    //Look it up.
		}    

		///Check the start object-------------------------
		var _start_exists=false;
		with(obj_tile_swapper_start)
		{
		    if(depth==_low)
		    {   //Object already exists, update the values.
		        _start_exists=true;
		        active=true;
		        pal_sprite=_pal_sprite;
		        pal_index=_pal_index;
		        pal_is_surface=_is_surface;
		    }
		}

		if(!_start_exists)
		{   //Object does not exist.  Create it.
		    with(instance_create(0,0,obj_tile_swapper_start))
		    {
		        active=true;
		        depth=_low;
		        pal_sprite=_pal_sprite;
		        pal_index=_pal_index;
		        pal_is_surface=_is_surface;
		    }
		}

		///Check the start object-------------------------
		var _end_exists=false;
		with(obj_tile_swapper_end)
		{
		    if(depth==_high)
		    {   //Object already exists, update the values.
		        _end_exists=true;
		        active=true;
		    }
		}

		if(!_end_exists)
		{   //Object does not exist.  Create it.
		    with(instance_create(0,0,obj_tile_swapper_end))
		    {
		        active=true;
		        depth=_high;
		    }
		}
}
	
function wrap(value, minimum, maximum)
	{
		///@function wrap(value,min,max)
		//returns the value wrapped.  If it is above or below the threshold it will wrap around
		var _val=argument[0];
		var _max = argument[2];
		var _min = argument[1];

		if(_val mod 1 == 0)
		{
		    while(_val > _max || _val < _min)
		    {
		        if(_val > _max)
		        {
		            _val=_min + _val - _max - 1
		        }
		        else if (_val < _min)
		        {
		            _val=_max + _val - _min + 1;
		        }
		        else
		            _val=_val;
		    }
		    return(_val);
		}
		else
		{
		    var _old = argument[0]+1;
		    while(_val != _old)
		    {
		        _old=_val;
		        if(_val<_min)
		            _val=_max-(_min-_val);
		        else if(_val >_max)
		            _val=_min+(_val-_max);
		        else
		            _val=_val;
		    }
		    return(_val)
		}
	}

function reset_palette(){
/// @function reset_palette();
 

///Override stuff.
override_surface=noone;
override_pal_index=1;

pal_state=0
pal_count=0

current_pal = 0
}