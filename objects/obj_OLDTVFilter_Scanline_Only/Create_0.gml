/// @description OLD TV Filter Settings
//  Use this file to create presets for OLD TV Filter.
//
//  Version 1.0
//  
//  Developed by Vortex Game Studios LTDA ME. (http://vortexstudios.com
//  Author: Alexandre Ribeiro de Sá (@alexribeirodesa)
//
//	Check obj_OLDTVFilter_PresetBase > Create for every settings

script_execute( scr_OLDTVFilter_Settings );

global.oldtvfilter_enabled = true;

//  Game Settings
//  this is based in your game resolution, 
//  not the game window resolution.
//  ex.: NES uses 224 lines
global.game_lines = 224;

//  Noise
global.noise_enabled = false;

//  Composite Settings
global.composite_enabled = false;

//  Television Settings
global.television_enabled = false;

//  Chromatic Aberration
global.chromatic_enabled = false;

//  Scanline Settings
global.scanline_enabled = true;
global.scanline_count = 224;
global.scanline_pattern = sprite_get_texture(sprScanline1,0);        
global.scanline_magnetude = 0.5;            //  0.0 ~ 1.0

//  Tube Settings
global.tube_enabled = false;

script_execute( scr_OLDTVFilter_Setup );