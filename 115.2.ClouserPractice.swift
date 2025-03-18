let array = [1,2,3,4,5,6]

let evenNumbers = array.filter{ $0 % 2 == 0}
let oddNumbers = array.filter{ $0 % 2 != 0}

print("Even Numbers \(evenNumbers)")
print("Odd Numbers \(oddNumbers)")