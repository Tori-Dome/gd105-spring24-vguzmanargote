float x, y, xspeed, yspeed;

void setup() {
  fullScreen();
  x = random(width);
  y = random(height);
  xspeed = random(1, 3);
  yspeed = random(1, 3);
}

void draw() {
  background(0);
  ellipse(x, y, 50, 50);
  x += xspeed;
  y += yspeed;
  if (x > width || x < 0) {
    xspeed *= -1;
  }
  if (y > height || y < 0) {
    yspeed *= -1;
  }
}
