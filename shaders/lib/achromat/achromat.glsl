vec3 correctAchromat(vec4 color, float severity) {
  float amount = severity / 10.0;
  float grayscale = dot(color.rgb, vec3(0.2126, 0.7152, 0.0722));

  return mix(color.rgb, vec3(grayscale), amount);
}