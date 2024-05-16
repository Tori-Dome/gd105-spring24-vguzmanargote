void setup() {
  size(400, 400);
}

void draw() {
  background(255);

  // Eye outline
  fill(0);
  ellipse(width/2, height/2, 200, 200);
  
  // Iris
  fill(255, 0, 0); // Red iris color
  ellipse(width/2, height/2, 150, 150);
  
  // Pupil
  fill(0);
  ellipse(mouseX, mouseY, 50, 50);
  
  // Bloodshot veins
  for (int i = 0; i < 100; i++) {
    float x = random(width);
    float y = random(height);
    float d = dist(x, y, width/2, height/2);
    if (d < 100) {
      stroke(255, 0, 0); // Red veins
      line(width/2, height/2, x, y);
    }
  }
}
