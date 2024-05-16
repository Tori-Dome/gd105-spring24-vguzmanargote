ArrayList<Firework> fireworks = new ArrayList<Firework>();

void setup() {
  size(800, 600);
  for (int i = 0; i < 22; i++) {
    fireworks.add(new Firework(random(width), random(height)));
  }
}

void draw() {
  background(0);
  for (Firework f : fireworks) {
    f.update();
    f.display();
  }
}

class Firework {
  float x, y;
  float vy;
  boolean exploded;

  Firework(float x, float y) {
    this.x = x;
    this.y = y;
    this.vy = random(-10, -5);
    this.exploded = false;
  }

  void update() {
    if (!exploded) {
      y += vy;
      vy += 0.5;
      if (vy >= 0) {
        exploded = true;
        explode();
      }
    }
  }

  void explode() {
    for (int i = 0; i < 100; i++) {
      float angle = random(TWO_PI);
      float speed = random(1, 5);
      float vx = cos(angle) * speed;
      float vy = sin(angle) * speed;
      stroke(random(255), random(255), random(255));
      strokeWeight(random(1, 5));
      point(x, y);
      line(x, y, x + vx * 20, y + vy * 20);
    }
  }

  void display() {
    if (!exploded) {
      stroke(255);
      point(x, y);
    }
  }
}
