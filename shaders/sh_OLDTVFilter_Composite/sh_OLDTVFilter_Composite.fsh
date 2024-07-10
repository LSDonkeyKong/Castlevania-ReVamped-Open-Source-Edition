
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
uniform float f_distortion;
uniform float f_artifact;
uniform float f_fringing;
uniform float a_kernel[3];
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

float Overlay(float I, float M) {
    I += 0.5;
    M += 0.5;
    return (I * (I + (2.0 * M)*(1.0 - I))) -0.5;
}

void main() {
    float even = mod(abs(v_vTexcoord.x / f_screenWidth*0.5 + v_vTexcoord.y / f_screenHeight) + 0.5, 2.0);
    float d = f_screenWidth*(even - 0.5) * f_distortion;

    vec4 o = texture2D( gm_BaseTexture, v_vTexcoord );
    o += texture2D( gm_BaseTexture, v_vTexcoord + vec2( d, 0.0 ) );
    vec3 yuv = RGB2YUV(o.rgb * 0.5);
    
    vec3 c = vec3(0.0, 0.0, 0.0);
    c += texture2D( gm_BaseTexture, v_vTexcoord + vec2(-f_screenWidth+d, 0.0 ) ).rgb * a_kernel[0];
    c += texture2D( gm_BaseTexture, v_vTexcoord + vec2( d, 0.0 ) ).rgb * a_kernel[1];
    c += texture2D( gm_BaseTexture, v_vTexcoord + vec2( f_screenWidth+d, 0.0 ) ).rgb * a_kernel[2];
    
    float yuvComposite = RGB2Y(c);
    
    if( floor(even) == 0.0 )
        yuvComposite = -yuvComposite;
        
    float artifact = yuvComposite * f_artifact;
    float fringing = yuvComposite * f_fringing;
    
    yuv.r = Overlay(yuv.r, artifact);
    yuv.g = Overlay(yuv.g, fringing);
    yuv.b = Overlay(yuv.b, fringing);

    o.rgb = YUV2RGB( yuv );

    gl_FragColor = o;
}

