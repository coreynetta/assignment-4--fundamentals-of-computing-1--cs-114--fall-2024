void initializeBoard() {
  for (int r = 0; r < BOARD_SIZE; r++) {
    for (int c = 0; c < BOARD_SIZE; c++) {
      board[r][c] = ' ';
    }
  }
}
boolean makeMove(int cell, boolean isComputer) {
  int row = cell / BOARD_SIZE;
  int col = cell % BOARD_SIZE;
  if (board[row][col] == ' ') {
    board[row][col] = isComputer ? 'X' : 'O'; // Use 'O' instead of '0'
    return true;
  }
  return false;
}

void computerTurn() {
  for (int r = 0; r < BOARD_SIZE; r++) { 
    for (int c = 0; c < BOARD_SIZE; c++) {
      if (board[r][c] == ' ') {
        board[r][c] = 'X';
        return;
      }
    }
  }
}

boolean checkGameOver() {
  // Check rows, columns, and diagonals
  for (int i = 0; i < BOARD_SIZE; i++) {
    if (checkLine(board[i][0], board [i][1], board[i][2]) ||
        checkLine(board[0][i], board[1][i], board[2][i])) {
          announceWinner();
          return true;
        }
  }
  if (checkLine(board[0][0], board[1][1], board[2][2]) ||
      checkLine(board[0][2], board[1][1], board[2][0])) {
        announceWinner();
        return true;
      }
      if (isBoardFull()) {
        println("It's a draw!");
        gameOver = true;
        return true;
      }
      println("The game is still in play.");
      return false;
}

boolean checkLine(char a, char b, char c) {
  return a != ' ' && a == b && b == c;
}

void announceWinner() {
  println((board[1][1] == 'X' ? "Computer" : "User") + " wins!");
  gameOver = true;
}

boolean isBoardFull() {
  for (int r = 0; r < BOARD_SIZE; r++) {
    for (int c = 0; c < BOARD_SIZE; c++) {
      if (board[r][c] == ' ') {
        return false;
      }
    }
  }
  return true;
}
