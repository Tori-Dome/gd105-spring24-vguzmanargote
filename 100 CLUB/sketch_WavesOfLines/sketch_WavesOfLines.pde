void setup() {
  size(800, 600);
  background(2);
  for (int i = 0; i < 20; i++) {
    float y = i * 30 + 50;
    stroke(random(255), random(255), random(255), random(200));
    for (int x = 50; x < width - 50; x += 20) {
      line(x, y, x + 10, y + sin(x/10.0 + frameCount/10.0) * 20);
    }
  }
}
