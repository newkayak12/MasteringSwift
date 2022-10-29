import Foundation

/*:
 # Comparable for Enumerations
 */

enum Weekday: Int{
   case sunday
   case monday
   case tuesday
   case wednesday
   case thursday
   case friday
   case saturday
}

/**
 comparable
 < , <=, >,  >=
 정렬
 */

extension Weekday: Comparable{
    static func < (lhs: Weekday, rhs: Weekday) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }
}//나머지는 구현이 자동으로 된다.

Weekday.sunday < Weekday.monday //compile Error
Weekday.sunday <= Weekday.monday
Weekday.sunday > Weekday.monday
Weekday.sunday >= Weekday.monday

//: [Next](@next)
