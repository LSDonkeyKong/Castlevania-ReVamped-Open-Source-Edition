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
global.scanline_enabled = false;

//  Tube Settings
global.tube_enabled = true;
global.tube_mask = sprite_get_texture(sprMaskWide1,0);
global.tube_distortion = 0.3;              // -1.0 ~ 1.0

script_execute( scr_OLDTVFilter_Setup );