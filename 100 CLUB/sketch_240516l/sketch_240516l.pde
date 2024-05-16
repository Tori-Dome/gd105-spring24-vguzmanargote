void setup() {
  size(800, 600);
  background(0);
  for (int i = 0; i < 20; i++) {
    float x = random(width);
    float y = random(height);
    drawNeonLight(x, y);
  }
}

void drawNeonLight(float x, float y) {
  strokeWeight(5);
  stroke(255, 0, 255);
  point(x, y);
}
