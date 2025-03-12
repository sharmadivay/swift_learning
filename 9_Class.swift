class Developer {
    var name : String? // ? for optional
    var jobTitle : String?
    var yearExp : Int?

    init(){} // blank constructure 

    init(name : String , jobTitle : String , yearExp : Int){
        self.name = name 
        self.jobTitle = jobTitle
        self.yearExp = yearExp
    }

    func speakName(){
        print( name  ?? "Empty" )
    }
}


class iosDeveloper : Developer {
    var favTech : String?

    func speakFavTech () {
        if let favTech = favTech {
            print(favTech)
        }else {
            print("Nothing to Show")
        }
    }

    override func speakName () {
        print("\(name ?? "Unknown") -- \(jobTitle ?? "Nothing")" )
    }
}

let dev = iosDeveloper(name : "Divay" , jobTitle : "Developer" , yearExp : 2)

dev.speakName()