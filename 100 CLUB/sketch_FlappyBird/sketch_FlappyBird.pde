Bird bird;
ArrayList<Obstacle> obstacles;
boolean gameOver = false;
int score = 0;

void setup() {
  size(800, 600);
  bird = new Bird(width / 4, height / 2, 30, 30);
  obstacles = new ArrayList<Obstacle>();
  obstacles.add(new Obstacle());
}

void draw() {
  background(255);
  if (!gameOver) {
    bird.update();
    bird.display();
    for (int i = obstacles.size() - 1; i >= 0; i--) {
      Obstacle o = obstacles.get(i);
      o.update();
      o.display();
      if (o.hits(bird)) {
        gameOver = true;
      }
      if (o.passed(bird)) {
        score++;
      }
      if (o.offscreen()) {
        obstacles.remove(i);
      }
    }
    if (frameCount % 100 == 0) {
      obstacles.add(new Obstacle());
    }
    textAlign(CENTER);
    textSize(32);
    fill(0);
    text("Score: " + score, width / 2, 50);
  } else {
    textSize(64);
    fill(255, 0, 0);
    textAlign(CENTER, CENTER);
    text("Game Over", width / 2, height / 2);
  }
}

void keyPressed() {
  if (key == ' ') {
    bird.jump();
  }
}

class Bird {
  float x, y;
  float size;
  float velocity;
  float gravity;

  Bird(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.size = w;
    this.velocity = 0;
    this.gravity = 0.7;
  }

  void update() {
    velocity += gravity;
    y += velocity;
    if (y > height - size / 2) {
      y = height - size / 2;
      velocity = 0;
      gameOver = true;
    }
    if (y < size / 2) {
      y = size / 2;
      velocity = 0;
    }
  }

  void display() {
    fill(255, 255, 0);
    ellipse(x, y, size, size);
  }

  void jump() {
    velocity = -12;
  }
}

class Obstacle {
  float x, gapY;
  float w, h;
  float speed;

  Obstacle() {
    x = width;
    w = 80;
    h = random(height / 3);
    gapY = random(h + 50, height - h - 50);
    speed = 5;
  }

  void update() {
    x -= speed;
  }

  void display() {
    fill(0);
    rect(x, 0, w, h);
    rect(x, gapY, w, height - gapY);
  }

  boolean hits(Bird bird) {
    if (bird.y - bird.size / 2 < h || bird.y + bird.size / 2 > gapY) {
      if (bird.x + bird.size / 2 > x && bird.x - bird.size / 2 < x + w) {
        return true;
      }
    }
    return false;
  }

  boolean passed(Bird bird) {
    if (bird.x > x + w && bird.x < x + w + speed) {
      return true;
    }
    return false;
  }

  boolean offscreen() {
    if (x + w < 0) {
      return true;
    }
    return false;
  }
}
