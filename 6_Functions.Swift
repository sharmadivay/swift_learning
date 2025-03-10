
func printHelloWorld(){
    print("Hello World")
}
printHelloWorld()



func printHelloWorld(params:String){
 print(params)
}
printHelloWorld(params:"Hello World")



func printHelloWorld() -> String{
  return "Hello World"
}
print(printHelloWorld())