ArrayList<Star> stars = new ArrayList<Star>();

void setup() {
  size(800, 600);
  for (int i = 0; i < 20; i++) {
    stars.add(new Star(random(width), random(height)));
  }
}

void draw() {
  background(0);
  for (Star s : stars) {
    s.move();
    s.display();
  }
}

class Star {
  float x, y;
  float speedX, speedY;
  float radius;

  Star(float x, float y) {
    this.x = x;
    this.y = y;
    speedX = random(-2, 2);
    speedY = random(-2, 2);
    radius = random(10, 50);
  }

  void move() {
    x += speedX;
    y += speedY;
    if (x < 0 || x > width) speedX *= -1;
    if (y < 0 || y > height) speedY *= -1;
  }

  void display() {
    strokeWeight(3);
    stroke(random(255), random(255), random(255));
    point(x, y);
  }
}
