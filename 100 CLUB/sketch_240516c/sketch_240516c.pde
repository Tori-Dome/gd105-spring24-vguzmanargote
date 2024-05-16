int numRipples = 20;

void setup() {
  size(800, 600);
  for (int i = 0; i < numRipples; i++) {
    float x = random(width);
    float y = random(height);
    float numCircles = random(5, 20);
    drawRipplePattern(x, y, numCircles);
  }
}

void drawRipplePattern(float x, float y, float numCircles) {
  for (int i = 0; i < numCircles; i++) {
    float radius = random(10, 100);
    float alpha = map(i, 0, numCircles - 1, 255, 0);
    noFill();
    stroke(0, alpha);
    ellipse(x, y, radius * 2, radius * 2);
  }
}
