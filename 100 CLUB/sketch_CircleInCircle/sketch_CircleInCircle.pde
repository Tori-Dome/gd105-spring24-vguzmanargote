void setup() {
  size(800, 600);
  int layers = 20;
  for (int i = 0; i < layers; i++) {
    float diameter = map(i, 0, layers, 50, 500);
    fill(random(255), random(255), random(255), random(200));
    ellipse(width/2, height/2, diameter, diameter);
  }
}
