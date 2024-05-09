int cols = 20;
int rows = 20;
int scl = 20;
Snake snake;
Apple apple;

void setup() {
  size(20 * 20, 20 * 20);
  snake = new Snake();
  apple = new Apple();
}

void draw() {
  background(51);

  snake.update();
  snake.show();

  if (snake.eat(apple)) {
    apple = new Apple();
  }

  apple.show();

  if (snake.endGame()) {
    background(255, 0, 0);
    noLoop();
  }
}

void keyPressed() {
  if (keyCode == UP) {
    snake.dir(0, -1);
  } else if (keyCode == DOWN) {
    snake.dir(0, 1);
  } else if (keyCode == RIGHT) {
    snake.dir(1, 0);
  } else if (keyCode == LEFT) {
    snake.dir(-1, 0);
  }
}

class Snake {
  ArrayList<PVector> tail = new ArrayList<PVector>();
  PVector pos;
  PVector vel;

  Snake() {
    pos = new PVector(cols / 2, rows / 2);
    vel = new PVector(0, 0);
    tail.add(pos.copy());
  }

  void update() {
    PVector next = pos.copy().add(vel);
    if (next.x >= 0 && next.x < cols && next.y >= 0 && next.y < rows) {
      pos.add(vel);
      for (int i = tail.size() - 1; i > 0; i--) {
        tail.set(i, tail.get(i - 1).copy());
      }
      if (tail.size() > 0) {
        tail.set(0, pos.copy());
      }
    } else {
      endGame();
    }
  }

  void show() {
    fill(255);
    for (PVector v : tail) {
      rect(v.x * scl, v.y * scl, scl, scl);
    }
  }

  boolean eat(Apple apple) {
    if (pos.equals(apple.pos)) {
      tail.add(new PVector(pos.x, pos.y));
      return true;
    }
    return false;
  }

  void dir(int x, int y) {
    vel.set(x, y);
  }

  boolean endGame() {
    for (int i = 1; i < tail.size(); i++) {
      PVector v = tail.get(i);
      if (pos.equals(v)) {
        return true;
      }
    }
    return false;
  }
}

class Apple {
  PVector pos;

  Apple() {
    pos = new PVector(floor(random(cols)), floor(random(rows)));
  }

  void show() {
    fill(255, 0, 0);
    rect(pos.x * scl, pos.y * scl, scl, scl);
  }
}
