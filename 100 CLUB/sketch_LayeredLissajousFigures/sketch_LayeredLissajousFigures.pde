void setup() {
  size(800, 600);
  float a = 5;
  float b = 7;
  float delta = 0;
  for (int i = 0; i < 20; i++) {
    delta += PI/10;
    drawLissajous(width/2, height/2, 100, a, b, delta);
  }
}

void drawLissajous(float x, float y, float radius, float a, float b, float delta) {
  beginShape();
  for (float t = 0; t < TWO_PI; t += 0.1) {
    float x1 = x + radius * sin(a * t);
    float y1 = y + radius * cos(b * t + delta);
    vertex(x1, y1);
  }
  endShape();
}
