void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  rotate(-HALF_PI);
  strokeWeight(8);
  stroke(0);
  noFill();
  ellipse(0, 0, 500, 500);
  float hourAngle = map(hour() % 12, 0, 12, 0, TWO_PI);
  float minuteAngle = map(minute(), 0, 60, 0, TWO_PI);
  float secondAngle = map(second(), 0, 60, 0, TWO_PI);
  stroke(255, 0, 0);
  line(0, 0, cos(hourAngle) * 200, sin(hourAngle) * 200);
  stroke(0, 255, 0);
  line(0, 0, cos(minuteAngle) * 250, sin(minuteAngle) * 250);
  stroke(0, 0, 255);
  line(0, 0, cos(secondAngle) * 280, sin(secondAngle) * 280);
}
