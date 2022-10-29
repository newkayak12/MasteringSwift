import Foundation
//: [Previous](@previous)



/*:
 # Equatable for Structures
 */

struct Person: Equatable{
   let name: String
   let age: Int
}

let a = Person(name: "Steve", age: 50)
let b = Person(name: "Paul", age: 27)


a == b //Equatable 구현하지 않으면 컴파일 에러

//: [Next](@next)
