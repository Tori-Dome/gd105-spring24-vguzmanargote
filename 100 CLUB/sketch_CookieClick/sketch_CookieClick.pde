int score = 0;
int cookieSize = 100;

void setup() {
  size(400, 400);
}

void draw() {
  background(200);
  fill(255, 0, 0);
  ellipse(width/2, height/2, cookieSize, cookieSize);
  fill(0);
  textSize(32);
  text("Score: " + score, 10, 30);
}

void mousePressed() {
  if (dist(mouseX, mouseY, width/2, height/2) < cookieSize/2) {
    score++;
  }
}
