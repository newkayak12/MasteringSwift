import Foundation
//: [Previous](@previous)



/*:
 # Hashable for Classes
 */
//역시 클래스는 직접해야함
class Person {
   let name: String
   let age: Int
   
   init() {
      name = "Jane Doe"
      age = 0
   }
}

extension Person: Equatable, Hashable {
    static func == (lhs:Person, rhs: Person) -> Bool {
        return lhs.age == rhs.age && lhs.name == rhs.name
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(age)
    }

}
