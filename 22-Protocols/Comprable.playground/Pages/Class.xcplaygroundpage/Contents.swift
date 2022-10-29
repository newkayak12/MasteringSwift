import Foundation
//: [Previous](@previous)



/*:
 # Comparable for Classes
 */

enum MembershipGrade: Comparable {
   case normal
   case premium
   case vip
   case vvip
}

class Membership {
   let name: String
   let grade: MembershipGrade
   let point: Int
   
   init(name: String, grade: MembershipGrade, point: Int) {
      self.name = name
      self.grade = grade
      self.point = point
   }
}

extension Membership: Equatable, Comparable {
    static func == (lhs: Membership, rhs: Membership) -> Bool {
        return lhs.grade == rhs.grade && lhs.name == rhs.name && lhs.point == rhs.point
    }
    static func < (lhs: Membership, rhs: Membership) -> Bool {
        return lhs.grade < rhs.grade
    }
}

let a = Membership(name: "James", grade: .premium, point: 123)
let b = Membership(name: "Yuna", grade: .vvip, point: 2020)
let c = Membership(name: "Paul", grade: .normal, point: 37)

a < b
b > c
