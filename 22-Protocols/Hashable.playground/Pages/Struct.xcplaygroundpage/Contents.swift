import Foundation
//: [Previous](@previous)



/*:
 # Hashable for Structures
 */

struct Person: Hashable {
   let name: String
   let age: Int
}

let set: Set = [Person(name: "Tom", age: 12)]
let dictionary: [Person: String]


//: [Next](@next)
