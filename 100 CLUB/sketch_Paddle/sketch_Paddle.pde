// Constants
final int WIDTH = 800;
final int HEIGHT = 600;
final int PADDLE_WIDTH = 10;
final int PADDLE_HEIGHT = 80;
final int BALL_SIZE = 20;
final int PADDLE_SPEED = 5;
final int BALL_SPEED = 5;

// Paddle positions
int leftPaddleY = HEIGHT / 2 - PADDLE_HEIGHT / 2;
int rightPaddleY = HEIGHT / 2 - PADDLE_HEIGHT / 2;

// Ball position and velocity
float ballX = WIDTH / 2;
float ballY = HEIGHT / 2;
float ballDX = BALL_SPEED;
float ballDY = BALL_SPEED;

// Scores
int leftScore = 0;
int rightScore = 0;

void setup() {
  size(800, 600);
}

void draw() {
  background(0);
  
  // Draw paddles
  fill(255);
  rect(0, leftPaddleY, PADDLE_WIDTH, PADDLE_HEIGHT);
  rect(WIDTH - PADDLE_WIDTH, rightPaddleY, PADDLE_WIDTH, PADDLE_HEIGHT);
  
  // Draw ball
  ellipse(ballX, ballY, BALL_SIZE, BALL_SIZE);
  
  // Update ball position
  ballX += ballDX;
  ballY += ballDY;
  
  // Check collision with paddles
  if (ballX <= PADDLE_WIDTH && ballY >= leftPaddleY && ballY <= leftPaddleY + PADDLE_HEIGHT) {
    ballDX *= -1;
  } else if (ballX >= WIDTH - PADDLE_WIDTH && ballY >= rightPaddleY && ballY <= rightPaddleY + PADDLE_HEIGHT) {
    ballDX *= -1;
  }
  
  // Check collision with top and bottom walls
  if (ballY <= 0 || ballY >= HEIGHT) {
    ballDY *= -1;
  }
  
  // Check for scoring
  if (ballX < 0) {
    rightScore++;
    reset();
  } else if (ballX > WIDTH) {
    leftScore++;
    reset();
  }
  
  // Draw scores
  fill(255);
  textSize(32);
  textAlign(CENTER, CENTER);
  text(leftScore + " - " + rightScore, WIDTH / 2, 50);
}

void reset() {
  ballX = WIDTH / 2;
  ballY = HEIGHT / 2;
  ballDX *= random(1) > 0.5 ? -1 : 1;
  ballDY *= random(1) > 0.5 ? -1 : 1;
}
