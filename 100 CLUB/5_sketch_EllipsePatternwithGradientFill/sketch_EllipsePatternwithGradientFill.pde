void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  for (int x = 50; x <= width - 50; x += 50) {
    for (int y = 50; y <= height - 50; y += 50) {
      fill(x/2, y/2, 255);
      ellipse(x, y, 40, 40);
    }
  }
}
