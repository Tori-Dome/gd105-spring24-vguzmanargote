void setup() {
  size(800, 600);
  background(0);
  for (int i = 0; i < 20; i++) {
    float x = random(width);
    float y = random(height);
    drawStarrySky(x, y);
  }
}

void drawStarrySky(float x, float y) {
  for (int i = 0; i < 100; i++) {
    float px = x + random(-200, 200);
    float py = y + random(-200, 200);
    stroke(255, random(100, 200));
    point(px, py);
  }
}
