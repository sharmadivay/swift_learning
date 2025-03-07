Array
// Arrays are ordered collections of values.
// An array stores values of the same type in an ordered list

var someInts: [Int] = []
print("someInts is of type [Int] with \(someInts.count) items.")


var array :[String] = ["hello","world","hiii","heee"]
array[0...2]=["mmm","gggg"]
print(array)


for (index, value) in shoppingList.enumerated() { // .enumerated to take index as well as value
    print("Item \(index + 1): \(value)")
}

// Sets are unordered collections of unique values. 

let people = Set(["Denzel Washington", 
				    "Tom Cruise", 
				    "Nicolas Cage", 
					"Samuel L Jackson",
					"Denzel Washington"])
// If you notice in the example above, first an Array is created and then this Array is converted to a Set. Set will remove duplicate data from the given Array

// Dictionaries are unordered collections of key-value associations.

let employee2 = [

    "name": "Taylor Swift",

    "job": "Singer", 

    "location": "Nashville"

]

print(employee2["name", default: "Unknown"]) //OUTPUT: Taylor Swift

print(employee2["job", default: "Unknown"]) //OUTPUT: Singer

print(employee2["location", default: "Unknown"]) //OUTPUT: Nashville


// enum 
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}
Above we have defined 5 states of working days.

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday

