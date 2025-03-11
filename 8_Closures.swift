// let addTwoNumbers : (Int,Int) -> Int={
//     (number1,number2) in 
//     return number1 + number2
// }

// let result = addTwoNumbers(10,40)
// print(result)


// let addTwoNumbers :(Int,Int) -> Int = {
//     return $0+$1
// }

// print(addTwoNumbers(10,20))

let sample = {
 return "Hello World"
}

let printHello = {()-> () in print("Hello")}

print(sample())
printHello()