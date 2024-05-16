void setup() {
  size(800, 600);
  background(0);
  for (int i = 0; i < 22; i++) {
    float x = random(width);
    float y = random(height);
    drawSpirograph(x, y);
  }
}

void drawSpirograph(float x, float y) {
  float R = random(50, 200);
  float r = random(5, 50);
  float d = random(20, 100);
  float angle = 0;
  for (float t = 0; t < TWO_PI * 5; t += 0.01) {
    float px = x + (R + r) * cos(t) + d * cos(((R + r) / r) * t);
    float py = y + (R + r) * sin(t) + d * sin(((R + r) / r) * t);
    stroke(random(255), random(255), random(255));
    point(px, py);
  }
}
