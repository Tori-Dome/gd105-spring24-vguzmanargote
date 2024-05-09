ArrayList<PVector> snake = new ArrayList<PVector>();
PVector food;
int gridSize = 20;
int score = 0;
boolean gameOver = false;

void setup() {
  size(400, 400);
  snake.add(new PVector(0, 0));
  food = new PVector(int(random(width/gridSize))*gridSize, int(random(height/gridSize))*gridSize);
  frameRate(10);
}

void draw() {
  background(220);
  if (!gameOver) {
    moveSnake();
    checkCollisions();
    checkFood();
    drawSnake();
    drawFood();
  } else {
    textAlign(CENTER);
    textSize(32);
    fill(255, 0, 0);
    text("Game Over! Score: " + score, width/2, height/2);
  }
}

void keyPressed() {
  if (keyCode == UP && snake.get(0).y != -gridSize) snake.get(0).add(0, -gridSize);
  else if (keyCode == DOWN && snake.get(0).y != height) snake.get(0).add(0, gridSize);
  else if (keyCode == LEFT && snake.get(0).x != -gridSize) snake.get(0).add(-gridSize, 0);
  else if (keyCode == RIGHT && snake.get(0).x != width) snake.get(0).add(gridSize, 0);
}

void moveSnake() {
  for (int i = snake.size()-1; i > 0; i--) {
    snake.set(i, snake.get(i-1).copy());
  }
  snake.get(0).add(0, 0);
}

void checkCollisions() {
  PVector head = snake.get(0);
  for (int i = 1; i < snake.size(); i++) {
    if (head.equals(snake.get(i))) gameOver = true;
  }
  if (head.x < 0 || head.x >= width || head.y < 0 || head.y >= height) gameOver = true;
}

void checkFood() {
  PVector head = snake.get(0);
  if (head.equals(food)) {
    score++;
    snake.add(snake.get(snake.size()-1).copy());
    food = new PVector(int(random(width/gridSize))*gridSize, int(random(height/gridSize))*gridSize);
  }
}

void drawSnake() {
  fill(0);
  for (PVector segment : snake) {
    rect(segment.x, segment.y, gridSize, gridSize);
  }
}

void drawFood() {
  fill(255, 0, 0);
  rect(food.x, food.y, gridSize, gridSize);
}
