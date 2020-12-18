// Author: Vishal
// License: MIT

uniform float count; // = 10.0
uniform vec2 direction; // = vec2(0.0, 0.0)


vec4 transition (vec2 uv) {

  vec2 vv = vec2(1.0,1.0);
    vv.y = (0.2 * progress)+(1.8);
  vec2 p = uv + vv-(progress/10.0) * sign(direction);
  vec2 f = fract(p);

    float pr = progress*1.2;
    float s = step(pr, fract(count * uv.x));
    return mix(getToColor(f),getFromColor(uv), s);
}
