#include "/lib/color/blindness/tritan/func.glsl"

mat3 getTritanMatrix(float severity) {
  mat3 tritan = mat3(
    tritan_00(severity),	tritan_10(severity),	tritan_20(severity),
    tritan_01(severity),	tritan_11(severity),	tritan_21(severity),
    tritan_02(severity),	tritan_12(severity),	tritan_22(severity)
  );

  return tritan;
}