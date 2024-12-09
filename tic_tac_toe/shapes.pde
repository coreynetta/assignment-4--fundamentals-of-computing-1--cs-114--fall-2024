void drawBoard() {
  background(255);
  stroke(0);
  for (int i = 1; i < BOARD_SIZE; i++) {
    line(i * BOX_SIZE, 0, i * BOX_SIZE, height); 
    line(0, i * BOX_SIZE, width, i * BOX_SIZE); 
  }
  for (int r = 0; r < BOARD_SIZE; r++) {
    for (int c = 0; c < BOARD_SIZE; c++) {
      int x = c * BOX_SIZE;
      int y = r * BOX_SIZE;
      if (board[r][c] == 'X') {
        drawX(x, y);
      } else if (board[r][c] == 'O') { // Use 'O' instead of '0'
        draw0(x, y);
      }
    }
  }
}

void drawX(int x, int y) {
  stroke(255, 0, 0);
  line(x, y, x + BOX_SIZE, y + BOX_SIZE);
  line(x + BOX_SIZE, y, x, y + BOX_SIZE);
}

void draw0(int x, int y) {
  stroke(0, 0, 255);
  noFill();
  ellipse(x + BOX_SIZE / 2, y + BOX_SIZE / 2, BOX_SIZE * 0.8, BOX_SIZE * 0.8);
}
