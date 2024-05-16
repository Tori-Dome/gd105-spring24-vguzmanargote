void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  
  // Unicorn body
  fill(255, 192, 203);
  stroke(255, 192, 203);
  ellipse(200, 250, 150, 100);
  
  // Unicorn horn
  fill(255, 215, 0);
  noStroke();
  triangle(200, 150, 220, 200, 180, 200);
  
  // Unicorn head
  fill(255, 255, 255);
  stroke(255, 255, 255);
  ellipse(150, 200, 80, 80);
  
  // Unicorn eye
  fill(0);
  ellipse(140, 190, 10, 10);
  
  // Unicorn nose
  fill(255, 192, 203);
  ellipse(160, 220, 20, 15);
  
  // Unicorn mane
  fill(148, 0, 211);
  stroke(148, 0, 211);
  beginShape();
  vertex(110, 180);
  vertex(90, 160);
  vertex(100, 130);
  vertex(130, 110);
  vertex(160, 100);
  vertex(190, 110);
  vertex(220, 130);
  vertex(230, 160);
  vertex(210, 180);
  endShape(CLOSE);
}
