










//
//  OLD TV Filter for GameMaker
//
//  Version 1.0
//  
//  Developed by Vortex Game Studios LTDA ME. (http://vortexstudios.com
//  Authos: Alexandre Ribeiro de Sá (@alexribeirodesa)
//

uniform sampler2D t_texMask;
uniform float f_magnetudeTube;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

vec2 radialDistortion(vec2 uv) {
    vec2 cc = uv - 0.5;
    float dt = dot(cc, cc) * f_magnetudeTube;
    dt -= 0.2 * f_magnetudeTube;
    return uv + cc * (1.0 + dt) * dt;
}

void main() {
    vec4 o;
    vec2 uv;
    
    //  get the tube distortion
    if( f_magnetudeTube > 0.0 ) {
        uv = radialDistortion( v_vTexcoord );
        if( uv.x < 0.0025 || uv.x > 0.9975 || uv.y < 0.0025 || uv.y > 0.9975 ) {
            gl_FragColor = vec4(0.0, 0.0, 0.0, 1.0);
            return;
        }
    } else {
        uv = v_vTexcoord;
    }
    
    o = texture2D( gm_BaseTexture, uv );
 
    //  apply the mask
    o.rgb *= texture2D( t_texMask, uv ).rgb;
    gl_FragColor = o;
}

