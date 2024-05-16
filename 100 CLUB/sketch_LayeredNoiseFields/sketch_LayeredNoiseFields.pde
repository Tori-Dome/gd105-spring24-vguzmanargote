void setup() {
  size(800, 600);
  background(2);
  float yoff = 0;
  for (int i = 0; i < 20; i++) {
    float xoff = 0;
    beginShape();
    for (int x = 0; x < width; x++) {
      float y = map(noise(xoff, yoff), 0, 1, 0, height);
      vertex(x, y);
      xoff += 0.01;
    }
    yoff += 0.1;
    endShape();
  }
}
