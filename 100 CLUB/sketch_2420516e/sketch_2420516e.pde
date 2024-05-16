ArrayList<Particle> particles = new ArrayList<Particle>();

void setup() {
  size(800, 600);
  for (int i = 0; i < 22; i++) {
    particles.add(new Particle(random(width), random(height)));
  }
}

void draw() {
  background(0);
  for (Particle p : particles) {
    p.update();
    p.display();
  }
}

class Particle {
  float x, y;
  float speedX, speedY;
  float size;
  color col;

  Particle(float x, float y) {
    this.x = x;
    this.y = y;
    this.speedX = random(-2, 2);
    this.speedY = random(-2, 2);
    this.size = random(5, 20);
    this.col = color(random(255), random(255), random(255));
  }

  void update() {
    x += speedX;
    y += speedY;
    if (x < 0 || x > width) speedX *= -1;
    if (y < 0 || y > height) speedY *= -1;
  }

  void display() {
    noStroke();
    fill(col);
    ellipse(x, y, size, size);
  }
}
