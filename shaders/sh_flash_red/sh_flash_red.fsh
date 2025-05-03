// sh_flash_red.fsh
// uniform coming from the controller object
uniform float u_flash_alpha;        // 0 – 1 pulse strength

varying vec2  v_vTexcoord;
varying vec4  v_vColour;

void main() {
    vec4 baseColour  = texture2D(gm_BaseTexture, v_vTexcoord) * v_vColour;
    vec4 flashColour = vec4(0.68, 0.0, 0.0, u_flash_alpha);  // pure red, varying alpha
    gl_FragColor     = mix(baseColour, flashColour, flashColour.a);
}
