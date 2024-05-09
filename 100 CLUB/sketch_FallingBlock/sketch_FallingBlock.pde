// Define variables
int platformWidth = 100; // Width of the platform
int platformHeight = 20; // Height of the platform
int platformSpeed = 15; // Speed of the platform
int blockWidth = 50; // Width of falling blocks
int blockHeight = 20; // Height of falling blocks
int bombWidth = 30; // Width of bombs
int bombHeight = 30; // Height of bombs
int blockSpeed = 5; // Speed of falling blocks
int bombSpeed = 7; // Speed of bombs
int score = 0; // Player score
int lives = 3; // Player lives
int platformX; // X-coordinate of the platform
int blockX, blockY; // Coordinates of falling blocks
int bombX, bombY; // Coordinates of bombs
boolean gameover = false; // Flag to indicate game over

void setup() {
  size(400, 600);
  platformX = width / 2 - platformWidth / 2;
  blockX = int(random(0, width - blockWidth));
  blockY = -blockHeight;
  bombX = int(random(0, width - bombWidth));
  bombY = -bombHeight;
}

void draw() {
  background(255);
  
  // Draw platform
  fill(0, 255, 0);
  rect(platformX, height - platformHeight, platformWidth, platformHeight);
  
  // Draw falling block
  fill(0, 0, 255);
  rect(blockX, blockY, blockWidth, blockHeight);
  
  // Draw bomb
  fill(255, 0, 0);
  ellipse(bombX + bombWidth / 2, bombY + bombHeight / 2, bombWidth, bombHeight);
  
  // Move falling block and bomb
  blockY += blockSpeed;
  bombY += bombSpeed;
  
  // Check collision with platform
  if (blockY + blockHeight >= height - platformHeight && blockX >= platformX && blockX + blockWidth <= platformX + platformWidth) {
    blockY = -blockHeight;
    blockX = int(random(0, width - blockWidth));
    score++;
  }
  
  // Check collision with bomb
  if (bombY + bombHeight >= height - platformHeight && bombX >= platformX && bombX + bombWidth <= platformX + platformWidth) {
    bombY = -bombHeight;
    bombX = int(random(0, width - bombWidth));
    lives--;
    if (lives <= 0) {
      gameover = true;
    }
  }
  
  // Check if falling block and bomb are out of bounds
  if (blockY > height || bombY > height) {
    blockY = -blockHeight;
    blockX = int(random(0, width - blockWidth));
    bombY = -bombHeight;
    bombX = int(random(0, width - bombWidth));
  }
  
  // Display score and lives
  fill(0);
  textSize(20);
  textAlign(LEFT);
  text("Score: " + score, 10, 30);
  text("Lives: " + lives, 10, 60);
  
  // Game over message
  if (gameover) {
    fill(255, 0, 0);
    textSize(40);
    textAlign(CENTER, CENTER);
    text("GAME OVER", width/2, height/2);
  }
}

// Move platform with arrow keys
void keyPressed() {
  if (keyCode == LEFT) {
    platformX -= platformSpeed;
  } else if (keyCode == RIGHT) {
    platformX += platformSpeed;
  }
  
  // Ensure platform stays within screen bounds
  platformX = constrain(platformX, 0, width - platformWidth);
}
