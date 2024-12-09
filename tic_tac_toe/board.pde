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
