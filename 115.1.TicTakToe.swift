enum Player : String {
    case x = "X"
    case o = "O"
}

struct TicTacToe {
    // board 
    var board : [[String]] = [[" "," "," "] , [" "," "," "] , [" "," "," "]]
    
    // currentPlayer
    var currentPlayer : Player = .x
    
    // fuction to print board 
    func printBoard (){
        for row in board {
            print(row.map{"\($0)"}.joined(separator : "|"))
            print("------")
        }
    }
    
    
   // function to switch player    
    mutating func switchPlayer() {
        currentPlayer  = (currentPlayer == .x) ? .o : .x
    }
    
    
    // function to check if move is valid
    func isValidMove(row : Int , col :Int) -> Bool {
        return board[row][col] == " "
    }
    
    // function to make a move
    mutating func makeMove (row : Int , col : Int) -> Bool{
        if isValidMove(row : row , col : col){
            board[row][col] = currentPlayer.rawValue
            return true
        }
        
        return false
    }
    
    // function to check is board full
    func isBoardFull () -> Bool {
       return !board.flatMap { $0 }.contains(" ")
    }
       
    // function to checkwinner
    func checkWinner () -> Player?{
         for i in 0..<3 {
            if board[i][0] == board[i][1], board[i][1] == board[i][2], board[i][0] != " " {
                return Player(rawValue: board[i][0])
            }
            if board[0][i] == board[1][i], board[1][i] == board[2][i], board[0][i] != " " {
                return Player(rawValue: board[0][i])
            }
        }
        
        if board[0][0] == board[1][1], board[1][1] == board[2][2], board[0][0] != " " {
            return Player(rawValue: board[0][0])
        }
        if board[0][2] == board[1][1], board[1][1] == board[2][0], board[0][2] != " " {
            return Player(rawValue: board[0][2])
        }
        
        return nil
    }
    
   mutating func startGame() {
        print("🎮 Welcome to Tic-Tac-Toe!\n")
        printBoard()
        
        while true {
            print("\(currentPlayer.rawValue)'s turn! Enter row (0-2) and column (0-2): ", terminator: "")
            if let input = readLine(), let row = Int(input.prefix(1)), let col = Int(input.suffix(1)), (0...2).contains(row), (0...2).contains(col) {
                
                if makeMove(row: row, col: col) {
                    printBoard()
                    
                    if let winner = checkWinner() {
                        print("🎉 Player \(winner.rawValue) wins!")
                        break
                    }
                    
                    if isBoardFull() {
                        print("🤝 It's a draw!")
                        break
                    }
                    
                    switchPlayer()
                } else {
                    print("❌ Invalid move! Try again.")
                }
            } else {
                print("⚠️ Invalid input! Enter row and column numbers correctly.")
            }
        }
    }
}


var game = TicTacToe()
game.startGame()