let operators : [String] = ["+","-","*"]

print("Welcome to the Math Quiz! 🧮")
  var score :Int = 0
for i in 1...5{
   let num1: Int = Int.random(in: 1...20) 
   let num2: Int = Int.random(in: 1...20)
   
   let ranOperator = Int.random(in : 0...2)
   let opet : String = operators[ranOperator]
   
   
   print("Question \(i) : \(num1) \(opet) \(num2) = ?")
   
   var result :Int = 0
 
   
   switch opet {
       case "+" : result = num1 + num2
       case "-" : result = num1 - num2
       case "*" : result = num1 * num2
       default : result = 0
   }
   
    print("Your answer:", terminator: " ")
    
   if let answer = readLine() , Int(answer) ==  result {
        score += 1
      print("✅ Correct!")
   }else{
       print("❌ Wrong! The correct answer is \(result)")
   }
}

print("Your final score: \(score)/5 🎯")
print("Thanks for playing! 🎉")