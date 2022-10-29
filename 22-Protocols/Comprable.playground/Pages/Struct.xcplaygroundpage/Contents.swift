import Foundation
//: [Previous](@previous)



/*:
 # Comparable for Structures
 */

struct Person {
   let name: String
   let age: Int
}

extension Person: Comparable {
    static func < (lhs: Person, rhs: Person) -> Bool {
        return lhs.age < rhs.age
    }
}

let a = Person(name: "Paul", age: 12)
let b = Person(name: "Smith", age: 33)

a < b



//: [Next](@next)
