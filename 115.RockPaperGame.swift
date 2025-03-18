enum  Choice : String , CaseIterable {
    case rock = "Rock"
    case scissors = "Scissors"
    case paper = "Paper"
}

struct RoundResult {
    let playerChoice : Choice
    let aiChoice : Choice
    let resultMessage : String
}



class GameManager {
    var wins = 0
    var losses = 0
    var ties = 0
    
   func roundPlay(playerChoice: Choice) -> RoundResult {
        let aiChoice = Choice.allCases.randomElement() ?? .rock
        
        let resultMessage: String
        if playerChoice == aiChoice {
            ties += 1
            resultMessage = "It's a tie! 🤝"
        } else if (playerChoice == .rock && aiChoice == .scissors) ||
                  (playerChoice == .paper && aiChoice == .rock) ||
                  (playerChoice == .scissors && aiChoice == .paper) {
            wins += 1
            resultMessage = "You win! 🎉"
        } else {
            losses += 1
            resultMessage = "AI wins! 🤖"
        }
        
        return RoundResult(playerChoice: playerChoice, aiChoice: aiChoice, resultMessage: resultMessage)
    }
    
     func showFinalStats() {
        print("\n📊 Game Over! Final Score:")
        print("✅ Wins: \(wins) | ❌ Losses: \(losses) | 🤝 Ties: \(ties)")
    }
}

print("👊 Welcome to Rock, Paper, Scissors!")

print("🎮 Choose: [1] Rock [2] Paper [3] Scissors [0] Quit")

var userChoice : Int = -1

 let gameManager = GameManager()
    

while userChoice != 0 {
    
    print("Enter your choice : " , terminator : "")
    if let inpChoice = readLine() , let choice = Int(inpChoice) {
        userChoice = choice
    }
    
    switch userChoice {
        case 1:
            let result = gameManager.roundPlay(playerChoice: .rock)
            print("🧑 You chose: \(result.playerChoice)")
            print("🤖 AI chose: \(result.aiChoice)")
            print(result.resultMessage)
        case 2:
            let result = gameManager.roundPlay(playerChoice: .paper)
            print("🧑 You chose: \(result.playerChoice)")
            print("🤖 AI chose: \(result.aiChoice)")
            print(result.resultMessage)
        case 3:
            let result = gameManager.roundPlay(playerChoice: .scissors)
            print("🧑 You chose: \(result.playerChoice)")
            print("🤖 AI chose: \(result.aiChoice)")
            print(result.resultMessage)
        case 0:
            gameManager.showFinalStats()
            print("👋 Thanks for playing! Exiting... 🎉")
        default:
            print("⚠️ Enter a valid option!")
        }
    }
