//
//  OLD TV Filter for GameMaker
//
//  Version 1.0
//  
//  Developed by Vortex Game Studios LTDA ME. (http://vortexstudios.com
//  Authos: Alexandre Ribeiro de Sá (@alexribeirodesa)
//

uniform float f_screenWidth;
uniform float f_brightness;
uniform float f_contrast;
uniform float f_saturation;
uniform float f_sharpness;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

float a_kernel[3];// = float[3](1.0, 3.0, 1.0);

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
    return (I * (I + (2.0 * (M + 0.5)) * (1.0 - I)));
}

void main() {    
    float yuvComposite = 0.0;
    vec4 o = texture2D( gm_BaseTexture, v_vTexcoord );
    vec3 yuv = RGB2YUV(o.rgb);
    
    //  sharpness  
    if( f_sharpness != 0.0 ) {
        //float f_screenWidth = 0.00390625;//
        
        if( f_sharpness > 0.0 ) {
            a_kernel[0] = -1.0; a_kernel[1] = 2.0; a_kernel[2] = -1.0;
        } else {
            a_kernel[0] = 1.0; a_kernel[1] = 3.0; a_kernel[2] = 1.0;
        }
               
        int x = 0;
        float px = 0.0;
        
        for( x = -1; x <= 1; x++ ) {
            px = float(x) * f_screenWidth;
            yuvComposite += RGB2Y( texture2D( gm_BaseTexture, v_vTexcoord + vec2(px, 0.0) ).rgb ) * a_kernel[x+1];
        }
        
        if( f_sharpness > 0.0 ) {
            yuv.r = Overlay( yuv.r, yuvComposite * f_sharpness );
        } else {
            yuvComposite /= 5.0;
            float localSharpness = (1.0 + f_sharpness);
            yuv.r = (yuv.r * localSharpness) + (yuvComposite * (1.0 - localSharpness));
        }
    }
    
    //  brilho
    yuv.r += f_brightness;

    //  contraste
    o.rgb = f_contrast * (YUV2RGB(yuv) - vec3(0.5)) + vec3(0.5);    
    //o.rgb = YUV2RGB(yuv);
    
    //  saturação    
    o.rgb = mix(o.rgb, vec3(dot(vec3(0.2126, 0.7152, 0.0722), o.rgb)), f_saturation);
    
    gl_FragColor = o;
}

