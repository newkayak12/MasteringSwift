import UIKit

/*:
 # Structure
 ![Struct](struct.png)
 */


/**
 Custom Data Type
 
 Swift Programming Paradigm
 1. Object-Oriented Programming --->  Object으로 구현
 2. Protocol-Oriented Programming ---> Structure 구현..
 3. Functinal Programming
 */
 


struct Person {
    var name: String
    var age: Int
    
    func speak(){
        print("Hello")
    }
    
}

let p = Person(name: "Steve", age: 50)

p.name
p.age
p.speak()



//: [Next](@next)
