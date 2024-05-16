void setup() {
  size(800, 600);
  for (int i = 0; i < 20; i++) {
    fill(random(255), random(255), random(255), random(200));
    rect(i * 20, i * 20, width - i * 40, height - i * 40);
  }
}
