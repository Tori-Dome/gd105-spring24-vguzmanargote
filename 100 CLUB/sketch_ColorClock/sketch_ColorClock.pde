void setup() {
  size(200, 100);
  textSize(32);
}

void draw() {
  background(255);
  fill(second()*4, 255, 255);
  textAlign(CENTER, CENTER);
  text(nf(hour(), 2) + ":" + nf(minute(), 2) + ":" + nf(second(), 2), width/2, height/2);
}
