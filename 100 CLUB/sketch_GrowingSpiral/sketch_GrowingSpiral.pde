float angle = 0;
float angleIncrement = 0.1;
float radius = 10;
float radiusChange = 1;

void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  
  // Draw spirals
  for (int i = 0; i < 10; i++) {
    float x = radius * cos(angle);
    float y = radius * sin(angle);
    float spiralSize = map(sin(angle), -1, 1, 10, 100);
    fill(0, 150, 255, 150);
    noStroke();
    ellipse(x, y, spiralSize, spiralSize);
    angle += angleIncrement;
    radius += radiusChange;
  }
}
