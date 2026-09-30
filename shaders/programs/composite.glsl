#ifdef FSH

uniform sampler2D colortex0;

in vec2 texcoord;

/* RENDERTARGETS: 0 */
layout(location = 0) out vec4 color;

float strength = float(COLORBLIND_STRENGTH);

#if COLORBLIND_TYPE == 0
#include "/lib/protan/protan.glsl"

void main() {
  color = texture(colortex0, texcoord);
  color.rgb = correctProtan(color, strength);
}
#endif

#if COLORBLIND_TYPE == 1
#include "/lib/deutan/deutan.glsl"

void main() {
  color = texture(colortex0, texcoord);
  color.rgb = correctDeutan(color, strength);
}
#endif

#if COLORBLIND_TYPE == 2
#include "/lib/tritan/tritan.glsl"

void main() {
  color = texture(colortex0, texcoord);
  color.rgb = correctTritan(color, strength);
}
#endif

#if COLORBLIND_TYPE == 3
#include "/lib/achromat/achromat.glsl"

void main() {
  color = texture(colortex0, texcoord);
  color.rgb = correctAchromat(color, strength);
}
#endif
#endif

#ifdef VSH
out vec2 texcoord;

void main() {
  texcoord = (gl_TextureMatrix[0] * gl_MultiTexCoord0).xy;
  gl_Position = ftransform();
}

#endif