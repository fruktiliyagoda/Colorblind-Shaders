#include "/lib/protan/func.glsl"

vec3 correctProtan(vec4 color, float severity) {
  mat3 protan = mat3(
    protan_00(severity),	protan_10(severity),	protan_20(severity),
    protan_01(severity),	protan_11(severity),	protan_21(severity),
    protan_02(severity),	protan_12(severity),	protan_22(severity)
  );

  return protan * color.rgb;
}