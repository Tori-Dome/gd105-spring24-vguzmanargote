char[][] board = new char[3][3];
char currentPlayer = 'X';

void setup() {
  size(300, 300);
  initializeBoard();
}

void draw() {
  background(155);
  drawBoard();
  checkWinner();
}

void mousePressed() {
  int col = mouseX / (width / 3);
  int row = mouseY / (height / 3);
  if (board[row][col] == ' ') {
    board[row][col] = currentPlayer;
    currentPlayer = (currentPlayer == 'X') ? 'O' : 'X';
  }
}

void initializeBoard() {
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      board[i][j] = ' ';
    }
  }
}

void drawBoard() {
  float w = width / 3;
  float h = height / 3;
  strokeWeight(4);
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      float x = j * w + w / 2;
      float y = i * h + h / 2;
      char spot = board[i][j];
      textSize(32);
      textAlign(CENTER, CENTER);
      if (spot == 'X') {
        line(x - w / 4, y - h / 4, x + w / 4, y + h / 4);
        line(x + w / 4, y - h / 4, x - w / 4, y + h / 4);
      } else if (spot == 'O') {
        ellipse(x, y, w / 2, h / 2);
      }
    }
  }
}

void checkWinner() {
  char winner = checkRows() != ' ' ? checkRows() :
               checkCols() != ' ' ? checkCols() :
               checkDiagonals();
  if (winner != ' ') {
    textSize(64);
    textAlign(CENTER, CENTER);
    fill(255, 0, 0);
    text("Winner: " + winner, width / 2, height / 2);
    noLoop();
  }
}

char checkRows() {
  for (int i = 0; i < 3; i++) {
    if (board[i][0] == board[i][1] && board[i][1] == board[i][2] && board[i][0] != ' ') {
      return board[i][0];
    }
  }
  return ' ';
}

char checkCols() {
  for (int i = 0; i < 3; i++) {
    if (board[0][i] == board[1][i] && board[1][i] == board[2][i] && board[0][i] != ' ') {
      return board[0][i];
    }
  }
  return ' ';
}

char checkDiagonals() {
  if (board[0][0] == board[1][1] && board[1][1] == board[2][2] && board[0][0] != ' ') {
    return board[0][0];
  }
  if (board[0][2] == board[1][1] && board[1][1] == board[2][0] && board[0][2] != ' ') {
    return board[0][2];
  }
  return ' ';
}
