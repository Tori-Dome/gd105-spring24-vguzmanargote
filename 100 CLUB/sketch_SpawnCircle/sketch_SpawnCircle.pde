void setup() {
  fullScreen();
  background(0);
  frameRate(60);
}

void draw() {
  // Randomly generate colors
  int r = int(random(255));
  int g = int(random(255));
  int b = int(random(255));
  
  // Draw a random ellipse
  float x = random(width);
  float y = random(height);
  float diameter = random(20, 200);
  
  fill(r, g, b);
  noStroke();
  ellipse(x, y, diameter, diameter);
}

void keyPressed() {
  if (key == 's' || key == 'S') {
    // Save a screenshot when 's' or 'S' is pressed
    saveFrame("screenshot-####.png");
  }
}
