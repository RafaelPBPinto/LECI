package lab03.JogoGalo;

public class e implements JGaloInterface {
    private final static int BOARD_SIZE = 3; 
    private char player1 = 'X';
    private boolean[][] moves = new boolean[BOARD_SIZE][BOARD_SIZE];
    private char[][] board = new char[BOARD_SIZE][BOARD_SIZE];
    private int numMoves;

    public e(char player1) {
        this.player1 = player1;
        this.numMoves = 0;
        initializeBoard();
    }

    @Override
    public boolean setJogada(int row, int col) {
        row = row - 1;
        col = col - 1;
        if (row < 0 || row >= BOARD_SIZE || col < 0 || col >= BOARD_SIZE || moves[row][col]) {
            return false;
        }

        board[row][col] = player1;
        moves[row][col] = true;
        player1 = getActualPlayer();
        return true;
    }

    @Override
    public boolean isFinished() {
        return verifyBoard() || checkForWin();
    }

    @Override
    public char checkResult() {
        if (checkForWin()) {
            return player1 == 'X' ? 'X' : 'O';
        }
        return ' ';
    }

    private void initializeBoard() {
        for (int i = 0; i < BOARD_SIZE; i++) {
            for (int j = 0; j < BOARD_SIZE; j++) {
                board[i][j] = ' ';
            }
        }
    }

    private boolean verifyBoard() {
        for (int i = 0; i < BOARD_SIZE; i++) {
            for (int j = 0; j < BOARD_SIZE; j++) {
                if (!moves[i][j]) {
                    return false;
                }
            }
        }
        return true;
    }

    private boolean checkForWin() {
        // Check rows
        for (int i = 0; i < BOARD_SIZE; i++) {
            if (board[i][0] == board[i][1] && board[i][1] == board[i][2] && board[i][0] != ' ') {
                return true;
            }
        }

        // Check columns
        for (int j = 0; j < BOARD_SIZE; j++) {
            if (board[0][j] == board[1][j] && board[1][j] == board[2][j] && board[0][j] != ' ') {
                return true;
            }
        }

        // Check diagonals
        if (board[0][0] == board[1][1] && board[1][1] == board[2][2] && board[0][0] != ' ') {
            return true;
        }

        if (board[2][0] == board[1][1] && board[1][1] == board[0][2] && board[2][0] != ' ') {
            return true;
        }

        return false;
    }

    @Override
    public char getActualPlayer() {
        if (player1 == 'X') {
            return 'O';
        }
        return 'X';
    }
}
