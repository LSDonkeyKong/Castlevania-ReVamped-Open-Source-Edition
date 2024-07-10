








//
//  OLD TV Filter for GameMaker
//
//  Version 1.0
//  
//  Developed by Vortex Game Studios LTDA ME. (http://vortexstudios.com
//  Authos: Alexandre Ribeiro de Sá (@alexribeirodesa)
//

uniform sampler2D t_texNoise;
uniform float f_magnetudeNoise;
uniform float f_offsetNoise;
uniform sampler2D t_texStatic;
uniform float f_magnetudeStatic;
uniform float f_scaleStatic;
uniform float f_offsetStatic;
uniform sampler2D t_texDirt;
uniform float f_magnetudeDirt;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

float RGB2Y(vec3 _rgb) {
    return dot(_rgb, vec3(0.29900, 0.58700, 0.11400));
}

void main()
{
    vec2 offset = vec2(sin(f_offsetNoise), cos(f_offsetNoise));
    
    float staticOffset = 0.0;
    float staticMask = texture2D( t_texStatic, v_vTexcoord + vec2(offset.x, f_offsetStatic) ).g;
    
    if( f_magnetudeStatic > 0.0 ) {
        staticOffset = (RGB2Y(texture2D( t_texNoise, vec2(offset.x, v_vTexcoord.y) ).rgb)-0.5)*2.0*staticMask*f_magnetudeStatic;
    }
    
    vec4 o = texture2D( gm_BaseTexture, v_vTexcoord + vec2(staticOffset, 0) );
    vec3 noise = texture2D( t_texNoise, v_vTexcoord + vec2(offset.x + staticOffset, offset.y) ).rgb;

    if( f_magnetudeNoise > 0.0 )
        o.rgb = mix( o.rgb, noise, f_magnetudeNoise );
    else if( f_magnetudeNoise < 0.0 )
        o.rgb = mix( o.rgb, o.rgb*noise, -f_magnetudeNoise );

    if( f_magnetudeDirt > 0.0 ) {
        vec3 dirt = texture2D( t_texDirt, v_vTexcoord + vec2(offset.y, 0.0) ).rgb*10.0*staticMask*f_magnetudeDirt;
        dirt.r = clamp(dirt.r, 0.0, 1.0);
        dirt.g = clamp(dirt.g, 0.0, 1.0);
        dirt.b = clamp(dirt.b, 0.0, 1.0);
        
        o.rgb = o.rgb*(vec3(1.0,1.0,1.0)-dirt)+dirt;
    }
    
    gl_FragColor = o;
}

