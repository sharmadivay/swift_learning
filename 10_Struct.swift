// value type

// pre initilizer

struct Developer  {
   var name : String?
   var jobTitle : String?
   var yearExp : Int?

   func speakName (){
     print(name ?? "Unknown")
   } 
}

let dev = Developer(name : "Divay" , jobTitle :"iosDeveloper" , yearExp : 1 )

dev.speakName()