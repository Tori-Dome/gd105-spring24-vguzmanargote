int numCircles = 20;

void setup() {
  size(800, 600);
  drawLayeredRippleCircles(numCircles);
}

void drawLayeredRippleCircles(int numCircles) {
  for (int i = 0; i < numCircles; i++) {
    float centerX = random(width);
    float centerY = random(height);
    drawRippleCircle(centerX, centerY);
  }
}

void drawRippleCircle(float centerX, float centerY) {
  noFill();
  for (float r = 20; r < 200; r += 20) {
    float alpha = map(r, 20, 200, 200, 0);
    stroke(random(255), random(255), random(255), alpha);
    ellipse(centerX, centerY, r * 2, r * 2);
  }
}
