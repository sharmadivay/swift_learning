enum Difficulty {
    case Easy, Medium , Hard
}

let questions: [[String: Any]] = [
    [
        "question": "What is the capital of France?",
        "options": ["a) Berlin", "b) Madrid", "c) Paris", "d) Rome"],
        "correctAnswer": "c"
    ],
    [
        "question": "How many legs does a spider have?",
        "options": ["a) 4", "b) 6","c) 10 ","d) 8"],
        "correctAnswer": "d"
    ],
    [
        "question": "Which planet is known as the Red Planet?",
        "options": ["a) Mars", "b) Venus","c) Earth" , "d) Jupiter"],
        "correctAnswer": "a"
    ]
]

// Score 
var score = 0

print("Welcome to the Quiz Game! 🎉\n")

for(index,question) in questions.enumerated(){
   if let questionText = question["question" ] as? String,
    let options = question["options"] as? [String],
    let correctAnswer = question["correctAnswer"] as? String{
    
    print("Question \(index+1) : \(questionText)")
    
    for option in options {
        print(option)
    } 
     print("Your answer:", terminator: " ")
     
     if let userInput = readLine()?.lowercased(), userInput == correctAnswer {
            print("✅ Correct!\n")
            score += 1
        } else {
            print("❌ Wrong! The correct answer is \(correctAnswer).\n")
        }
   
   
}}

print("Your final score: \(score)/\(questions.count) 🎯")
print("Thanks for playing! 🎉")
