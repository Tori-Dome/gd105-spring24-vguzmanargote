// Constants
final int WIDTH = 600;
final int HEIGHT = 400;
final int FROG_SIZE = 20;
final int LANE_HEIGHT = HEIGHT / 5;
final int LOG_SPEED = 2;
final int TURTLE_SPEED = 1;
final int INITIAL_FROG_Y = HEIGHT - LANE_HEIGHT / 2;

// Frog variables
float frogX;
float frogY;
float frogSpeed = 5;

// Lane variables
float laneY;

// Log variables
float logX = 0;
float logWidth = WIDTH / 4;

// Turtle variables
float turtleX = WIDTH;
float turtleWidth = WIDTH / 6;
boolean turtleSubmerged = false;
float angle1, angle2, branchRatio;
int maxDepth = 9;

void setup() {
  size(800, 600);
  angle1 = random(PI / 4, PI / 3);
  angle2 = random(PI / 6, PI / 5);
  branchRatio = random(0.5, 0.8);
  background(255);
  drawTree(width / 2, height, 200, -HALF_PI, 8);
}

void drawTree(float x, float y, float length, float angle, int depth) {
  float endX = x + cos(angle) * length;
  float endY = y + sin(angle) * length;
  
  stroke(0, map(depth, 0, maxDepth, 150, 0));
  line(x, y, endX, endY);
  
  if (depth > 0) {
    drawTree(endX, endY, length * branchRatio, angle + angle1, depth - 1);
    drawTree(endX, endY, length * branchRatio, angle - angle2, depth - 1);
  }
}
