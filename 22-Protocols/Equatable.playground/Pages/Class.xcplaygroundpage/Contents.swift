import Foundation
//: [Previous](@previous)



/*:
 # Comparable for Classes
 */

class Person { //Type 'Person' does not conform to protocol 'Equatable'
   let name: String       // 구조체는 자동으로 Equatable을 구현해주지만 class는 그렇지 않다.
   let age: Int

    init(name: String, age: Int) {
      self.name = name
      self.age = age
   }
}

extension Person: Equatable {
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
}


let a = Person(name: "Steve", age: 50)
let b = Person(name: "Paul", age: 27)

a == b
a != b

a == a
a == b
b == a

// a == b && b == c ? -> a == c
