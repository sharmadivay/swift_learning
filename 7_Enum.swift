enum Phone {
    case iphone
    case realme 
    case redmi
    case nokia
}

func phoneOptions(on phone : Phone){
    if(phone == .iphone){
        print("5")
    }
    if(phone == .realme){
        print("4")
    }
    if(phone == .redmi){
        print("3")
    }
    else{
        print("2")
    }
}

phoneOptions(on : .nokia)



enum Phone : Int {
    case iphone = 5
    case realme = 4
    case redmi = 3
    case nokia = 2
}

func phoneOptions(on phone : Phone){
    print(phone.rawValue)
}

phoneOptions(on : .nokia)