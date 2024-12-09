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

