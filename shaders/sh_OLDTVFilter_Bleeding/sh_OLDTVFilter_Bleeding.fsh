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
uniform float f_bleeding;

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
    //2.0f, 4.0f, 1.0f, 4.0f, 2.0f, 13.0f 
    float a_kernel[5];// = float[] (2.0, 4.0, 1.0, 4.0, 2.0);
    a_kernel[0] = 2.0; a_kernel[1] = 4.0; a_kernel[2] = 1.0; a_kernel[3] = 4.0; a_kernel[4] = 2.0; 
    
    int x = 0;
    float px = 0.0;
    
    
    vec4 o = texture2D( gm_BaseTexture, v_vTexcoord );
    if( mod( floor(v_vTexcoord.y / f_screenHeight), 2.0 ) == 0.0 ) {
        o = texture2D( gm_BaseTexture, v_vTexcoord + vec2(f_screenWidth*0.125, 0.0) );
    } else {
        o = texture2D( gm_BaseTexture, v_vTexcoord - vec2(f_screenWidth*0.125, 0.0) );
    }
    
    vec3 yuv = vec3(0.0, 0.0, 0.0);
    
    for( x = -2; x <= 2; x++ ) {
        px = float(x) * f_screenWidth - f_screenWidth * 0.5;
        yuv.g += RGB2U( texture2D( gm_BaseTexture, v_vTexcoord + vec2(px, 0.0) ).rgb ) * a_kernel[x + 2];
        yuv.b += RGB2V( texture2D( gm_BaseTexture, v_vTexcoord + vec2(px, 0.0) ).rgb ) * a_kernel[x + 2];
    }
    
    yuv.r = RGB2Y(o.rgb);
    yuv.g /= 13.0;
    yuv.b /= 13.0;

    o.rgb = (o.rgb * (1.0 - f_bleeding)) + (YUV2RGB(yuv) * f_bleeding);
    gl_FragColor = o;
}

