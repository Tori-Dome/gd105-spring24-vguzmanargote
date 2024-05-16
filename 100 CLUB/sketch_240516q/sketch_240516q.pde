ArrayList<Flower> flowers = new ArrayList<Flower>();

void setup() {
  size(800, 600);
  for (int i = 0; i < 22; i++) {
    flowers.add(new Flower(random(width), random(height)));
  }
}

void draw() {
  background(0);
  for (Flower f : flowers) {
    f.move();
    f.display();
  }
}

class Flower {
  float x, y;
  float speedX, speedY;
  float radius;

  Flower(float x, float y) {
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
    float angle = TWO_PI / 5;
    for (float a = 0; a < TWO_PI; a += angle) {
      float sx = x + cos(a) * radius;
      float sy = y + sin(a) * radius;
      point(sx, sy);
    }
  }
}
