





//
//  OLD TV Filter for GameMaker
//
//  Version 1.0
//  
//  Developed by Vortex Game Studios LTDA ME. (http://vortexstudios.com
//  Authos: Alexandre Ribeiro de Sá (@alexribeirodesa)
//

uniform sampler2D t_texChromatic;
uniform float f_magnetudeChromatic;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main() {
    vec4 o = texture2D( gm_BaseTexture, v_vTexcoord );

    //  chromatic aberration
    if( f_magnetudeChromatic != 0.0 ) {
        vec3 c = texture2D( t_texChromatic, v_vTexcoord ).rgb * f_magnetudeChromatic;

        o.r = texture2D( gm_BaseTexture, v_vTexcoord - c.r ).r;
        o.b = texture2D( gm_BaseTexture, v_vTexcoord + c.b ).b;
    }

    gl_FragColor = o;
}

