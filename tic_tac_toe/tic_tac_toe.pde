void setup() {
  size(500, 500);
  initializeBoard();
  println("Computer's turn.");
  computerTurn();
}

void draw() {
  drawBoard();
}

void keyPressed() {
  if (gameOver) {
    println("The game has ended. Please restart.");
    return;
  }
  if (key >= '0' && key <= '8') {
    int box = key - '0';
    if (makeMove(box, false)) {
      if (!checkGameOver()) {
        println("Computer's turn.");
        computerTurn();
        checkGameOver();
      }
    } else {
      println("box is laready occupied.  Try again.");
    }
  } else { 
    println("Invalid key. Please press a key between 0-8.");
  }
}
