// 📜 Task Description
// You're building a Library Management System in Swift where:

// Users can borrow and return books.
// Books belong to different genres (Fiction, Science, History, etc.).
// The system tracks which books are borrowed and by whom.
// Users can view available books and search by genre.

print("Library Management System")

 
enum Genre : String {
    case fiction , science , history
}

struct Book {
    var title : String
    var author : String
    var genre : Genre
    var isBorrowed : String?
    
}

class Library {
    var books :[Book] = []
    var borrowedBooks: [String: String] = [:] 
    var availableGenres: Set<Genre> = [] 
   
   func starting (){
        let book1 = Book(title: "The Great Gatsby", author: " F. Scott Fitzgerald " , genre: .fiction)
    let book2 = Book(title: "A Brief History of Time", author: "Stephen Hawking " , genre: .science)
    let book3 = Book(title: "The Diary of a Young Girl", author: "Anne Frank" , genre: .history)
    
    books.append(book1)
    books.append(book2)
    books.append(book3)
   }
   
    func addBook (title : String , author : String , genre : Genre){
        let newBook = Book(title : title , author : author , genre : genre )
        books.append(newBook)
        print(" Book added successfully ✅")
    }
    
    func showBooks  (){
        print("Books Available : ")
        if books.isEmpty{
            print("Nothing to show")
            return
        }
        
       
         for (index, book) in books.enumerated() {
            print("\(index + 1). \(book.title) by \(book.author) - Genre: \(book.genre.rawValue) borrowedBy: \(book.isBorrowed ?? "Available")")
        }
    }
    
   func borrowBook(title: String, name: String) {
    for i in 0..<books.count {
        if books[i].title == title && books[i].isBorrowed == nil {
            books[i].isBorrowed = name
            print("You have successfully borrowed \(title) 📚")
            return
        }
    }
    print("Book is either not available or already borrowed ❌")
}

    
   func returnBook(title: String) {
    for i in 0..<books.count {
        if books[i].title == title && books[i].isBorrowed != nil {
            books[i].isBorrowed = nil
            print("You have successfully returned \(title) ✅")
            return
        }
    }
    print("Invalid return request. Either the book is not borrowed or does not exist ❌")
}

    
    func showBooksByGenre(genre : Genre){
        if books.count == 0 {
            print("Nothing to show")
            return
        }
        
        let filterBooks = books.filter{$0.genre == genre }
        
         for (index, book) in filterBooks.enumerated() {
            print("\(index + 1). \(book.title) by \(book.author) - Genre: \(book.genre.rawValue) borrowedBy: \(book.isBorrowed ?? "Available")")
        }
    }
    
    
}

var lib = Library()

lib.starting()

var value : Int = 0

print("1. Add New Book")
print("2. Borrow a book")
print("3. Return a book")
print("4. Search books by genre")
print("5. Exit")
 var isValue = true 
while value != 5 {
 
 if isValue {
     lib.showBooks()
 }
print("Enter your choice: " , terminator : "")

    isValue = true
    if let userInput = readLine() , let inpValue = Int(userInput){
        value = inpValue
        
        
        switch value {
            case 1 : 
            print("Enter book name: " , terminator : "")
            if let title = readLine() {
                 print("Enter author name: " , terminator : "")
                 if let  author = readLine() {
                      print("Enter genre: ( fiction , science , history): " , terminator : "")
                      if let userGenre = readLine() , let genre = Genre(rawValue: userGenre.lowercased()){
                          lib.addBook(title : title , author : author , genre : genre)
                      }
                 }
            }
            case 2 :
            print("Enter book name: " , terminator : "")
            if let title = readLine() {
                 print("Enter your name: " , terminator : "")
                 if let name = readLine() {
                     lib.borrowBook(title : title , name : name)
                 }
            }
            case 3 : 
             print("Enter book name: " , terminator : "")
            if let title = readLine() {
               
                     lib.returnBook(title : title)
                 
            }
            
            case 4 : 
            print("Enter Genre: " , terminator : "")
            if let userGenre = readLine() ,let genre = Genre(rawValue : userGenre ) {
            isValue = false
                lib.showBooksByGenre(genre : genre)
            }
            
            case 5 : break 
            default : 
            print(" ----- Enter valid option ----- ")
        }
    }
    
}

print("Exiting...🎉")
