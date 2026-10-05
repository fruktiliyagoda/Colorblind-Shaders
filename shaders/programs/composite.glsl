#ifdef FSH

#include "/lib/color/blindness/common.glsl"

uniform sampler2D colortex0;

in vec2 texcoord;

/* RENDERTARGETS: 0 */
layout(location = 0) out vec4 color;

void main() {
  color = texture(colortex0, texcoord);

  float SP = float(PROTANOMALY_STRENGTH);
  float SD = float(DEUTANOMALY_STRENGTH);
  float ST = float(TRITANOMALY_STRENGTH);

  mat3 complexRGB = calculateMatrix(float[](SP, SD, ST));

  color.rgb = complexRGB * color.rgb;
}

#endif

#ifdef VSH
out vec2 texcoord;

void main() {
  texcoord = (gl_TextureMatrix[0] * gl_MultiTexCoord0).xy;
  gl_Position = ftransform();
}

#endif