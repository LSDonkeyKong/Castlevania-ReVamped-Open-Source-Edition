
//
//  OLD TV Filter for GameMaker
//
//  Version 1.0
//  
//  Developed by Vortex Game Studios LTDA ME. (http://vortexstudios.com
//  Authos: Alexandre Ribeiro de Sá (@alexribeirodesa)
//

uniform float f_screenWidth;
uniform float f_screenHeight;
uniform sampler2D t_texScanline;
uniform float f_magnetude;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

float RGB2Y(vec3 _rgb) {
    return dot(_rgb, vec3(0.29900, 0.58700, 0.11400));
}

float RGB2U(vec3 _rgb) {
   return dot(_rgb, vec3(-0.14713, -0.28886, 0.43600));
}

float RGB2V(vec3 _rgb) {
   return dot(_rgb, vec3(0.61500, -0.51499, -0.10001));
}

vec3 RGB2YUV(vec3 _rgb) {
    vec3 _yuv;
    _yuv.r = RGB2Y(_rgb);
    _yuv.g = RGB2U(_rgb);
    _yuv.b = RGB2V(_rgb);

   return _yuv;
}

float YUV2R(vec3 _yuv) {
   return dot(_yuv, vec3(1, 0.00000, 1.13983));
}

float YUV2G(vec3 _yuv) {
   return dot(_yuv, vec3(1.0, -0.39465, -0.58060));
}

float YUV2B(vec3 _yuv) {
    return dot(_yuv, vec3(1.0, 2.03211, 0.00000));
}

vec3 YUV2RGB(vec3 _yuv) {
    vec3 _rgb;
    _rgb.r = YUV2R(_yuv);
    _rgb.g = YUV2G(_yuv);
    _rgb.b = YUV2B(_yuv);

   return _rgb;
}

void main() {
    vec4 o = texture2D( gm_BaseTexture, v_vTexcoord );
    
    o.r = clamp(o.r, 0.0, 0.95);
    o.g = clamp(o.g, 0.0, 0.95);
    o.b = clamp(o.b, 0.0, 0.95);
    
    vec3 _scanline = texture2D( t_texScanline, v_vTexcoord * vec2(f_screenWidth,f_screenHeight)).rgb;
    _scanline *= (1.0 - f_magnetude);
    _scanline += f_magnetude;
        
    //isso aqui deixa tudo AWESOME!!
    float _over = RGB2Y(o.rgb);
    _scanline = RGB2YUV(_scanline);
    _scanline.r += (_over * _over * _over) * (0.75 * (1.0-f_magnetude));
    if ( _scanline.r > 1.0 ) _scanline.r = 1.0;
    _scanline = YUV2RGB(_scanline);
    o.rgb *= _scanline;
    
    gl_FragColor = o;
}

