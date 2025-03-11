var todos: [String] = [] 

let addTodo: (String) -> Void = { task in
    todos.append(task)
}

let showTodo = {
    if todos.isEmpty {
        print("Nothing to show")
        return
    }
    
    for (index, todo) in todos.enumerated() {
        print("\(index + 1). \(todo)")
    }
}

let deleteTodo: (Int) -> Void = { i in
    if todos.isEmpty {
        print("Nothing to remove")
        return
    }
    
    if i > 0 && i <= todos.count {
        todos.remove(at: i - 1)
        print("Task removed successfully ✅")
    } else {
        print("Invalid task number.")
    }
}

print("Welcome to the To-Do List Manager! ✅")

 print("\n1. Add a task")
 print("2. Remove a task")
 print("3. View tasks")
 print("4. Exit")

var choice: Int? = nil

while choice != 4 {
   
    print("Enter your choice:", terminator: " ")

    if let userInput = readLine(), let userChoice = Int(userInput) {
        choice = userChoice
        switch choice {
        case 1:
            print("Enter the Task:", terminator: " ")
            if let task = readLine() {
                addTodo(task)
                print("Task added successfully! ✅")
            }
        case 2:
            print("Enter the Task number to remove:", terminator: " ")
            if let taskNum = readLine(), let taskIndex = Int(taskNum) {
                deleteTodo(taskIndex)
            }
        case 3:
            print("Your Tasks:")
            showTodo()
        case 4:
            print("Exiting... 👋")
            break
        default:
            print("Enter a valid number")
        }
    } else {
        print("Invalid input. Please enter a number.")
    }
}
