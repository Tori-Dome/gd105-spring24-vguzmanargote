float x = 0;

void setup() {
  size(400, 200);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(125);
  fill(0);
  textSize(32);
  text("I like big butts and I can not lie", x, height/2);
  x += 1;
  if (x > width) {
    x = -200;
  }
}
