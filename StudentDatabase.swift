var studentdetails : [[String : String]] =  []

let addStudent:(String , String) -> () = {
    (name,score) in 
    let detail = ["Name" : name , "Score" : score ]
    studentdetails.append(detail)
}

let calAvgScore : () -> (Double) = {
    let studentCount = Double(studentdetails.count)
    if studentCount == 0 {
        print("No Record")
        return 0.0
    }
    var scoreSum = 0.0
    for (student) in studentdetails {
      if let score = student["Score"] , let value = Double(score) {
          scoreSum  +=  value
      }
    }
    
   return scoreSum / studentCount
}

let filterStudents : (Int)->[String] = {
    (value) in 
    var list : [String] = []
    
    if studentdetails.isEmpty {
        print("No Record")
        return []
    }
    for (student) in  studentdetails {
        if let score = student["Score"] , let val = Int(score) , val > value {
            if let name = student["Name"] {
                list.append(name)
            }
        }
    }
    
    return list
    
}

let showStudents  = {
    if studentdetails.isEmpty {
        print("No Record")
       
    }
    for (student) in studentdetails {
        if let name = student["Name"] , let score = student["Score"] {
            print("List of Students : ") 
            print("Name : \(name) , Score : \(score)")
        }
    }
}

print("Welcome to Students records")

  print("\n1. Add a Student")
  print("2. Calculate the average score of all students.")
  print("3. Display all student names with their scores.")
  print("4. Filter students who scored above a certain threshold.")
  print("5. Exit")
 var inpValue = 0
 while( inpValue != 5 ){
     print("Enter your choice : " , terminator : "")
     if let value = readLine() , let inpvalue = Int(value){
      inpValue = inpvalue
         switch inpValue {
             case 1 :
                 print("Enter Name of Student : " , terminator : "")
                if let inpName = readLine() {
                 print("Enter Score of Student : " , terminator : "")
                 if let inpScore = readLine() {
                     addStudent(inpName,inpScore)
                     print("Student added successfully ✅")
                 }
             }
             case 2 :
               print("Average Score is : \(calAvgScore())")
             case 3 :
               showStudents()
             case 4 : 
                print("Enter Threshold Value: " , terminator : "")
                
                if let thValue = readLine() , let th = Int(thValue){
                    print("List of students")
                let list = filterStudents(th)
                for(student) in list{
                    print(student)
                }
                }
            case 5 : 
             break
             default : 
             print("Enter valid number")
         }
     }
  }
  
  
  print("Exiting...")
