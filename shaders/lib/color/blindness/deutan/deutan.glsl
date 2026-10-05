#include "/lib/color/blindness/deutan/func.glsl";

mat3 getDeutanMatrix(float severity) {
  mat3 deutan = mat3(
    deutan_00(severity),	deutan_10(severity),	deutan_20(severity),
    deutan_01(severity),	deutan_11(severity),	deutan_21(severity),
    deutan_02(severity),	deutan_12(severity),	deutan_22(severity)
  );

  return deutan;
}