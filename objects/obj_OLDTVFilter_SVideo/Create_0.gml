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
global.noise_pattern = sprite_get_texture(sprNoise1,0);
global.noise_magnetude = 0.1;              //  0.0 ~ 1.0
global.static_pattern = sprite_get_texture(sprStatic1,0);
global.static_magnetude = 0.0;              //  0.0 ~ 1.0
global.static_scale = 1.0;
global.static_offset = 0.0;
global.dirt_pattern = sprite_get_texture(sprNoise1,0);
global.dirt_magnetude = 0.0;                //  0.0 ~ 1.0

//  Composite Settings
global.composite_enabled = true;
global.composite_secondpass_enabled = false;
global.composite_distortion = 0.5;          //  0.0 ~ 1.0
global.composite_artifact = 0.035;          //  0.0 ~ 1.0
global.composite_fringing = 0.25;           //  0.0 ~ 1.0
global.composite_bleeding = 0.5;            //  0.0 ~ 1.0

//  Television Settings
global.television_enabled = true;
global.television_brightness = 0.0;         // -1.0 ~ 1.0
global.television_contrast = 0.05;          // -1.0 ~ 1.0
global.television_saturation = 0.7;         //  0.0 ~ 1.0
global.television_sharpness = -0.5;         // -1.0 ~ 1.0

//  Chromatic Aberration
global.chromatic_enabled = true;
global.chromatic_pattern = sprite_get_texture(sprChromatic1,0);
global.chromatic_magnetude = 0.1;          // -1.0 ~ 1.0

//  Scanline Settings
global.scanline_enabled = true;
global.scanline_count = 224;
global.scanline_pattern = sprite_get_texture(sprScanline1,0);        
global.scanline_magnetude = 0.75           //  0.0 ~ 1.0

//  Tube Settings
global.tube_enabled = true;
global.tube_mask = sprite_get_texture(sprMaskWide1,0);
global.tube_distortion = 0.15;              // -1.0 ~ 1.0

script_execute( scr_OLDTVFilter_Setup );