void initializeBoard() {
  for (int r = 0; r < BOARD_SIZE; r++) {
    for (int c = 0; c < BOARD_SIZE; c++) {
      board[r][c] = ' ';
    }
  }
}
