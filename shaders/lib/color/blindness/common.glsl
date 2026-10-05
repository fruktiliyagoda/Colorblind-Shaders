#include "/lib/color/blindness/protan/protan.glsl"
#include "/lib/color/blindness/deutan/deutan.glsl"
#include "/lib/color/blindness/tritan/tritan.glsl"

const mat3 RGB2LMS = mat3(
  0.313990, 0.155372, 0.017752,
  0.639513, 0.757894, 0.109442,
  0.046498, 0.086701, 0.872569
);

const mat3 LMS2RGB = mat3(
  5.472212, -1.125242, 0.029802,
  -4.641960, 2.293171, -0.193181,
  0.169637, -0.167895, 1.163648
);

mat3 calculateMatrix(float PDT[3]) {
  mat3 MP = getProtanMatrix(PDT[0]);
  mat3 MD = getDeutanMatrix(PDT[1]);
  mat3 MT = getTritanMatrix(PDT[2]);

  mat3 P_LMS = RGB2LMS * MP * LMS2RGB;
  mat3 D_LMS = RGB2LMS * MD * LMS2RGB;
  mat3 T_LMS = RGB2LMS * MT * LMS2RGB;

  mat3 combinedLMS = P_LMS + D_LMS + T_LMS - mat3(2.0);
  return LMS2RGB * combinedLMS * RGB2LMS;
}