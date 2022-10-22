import Foundation

/*:
 # CaseIterable
 */

enum Weekday: Int, CaseIterable {
   case sunday
   case monday
   case tuesday
   case wednesday
   case thursday
   case friday
   case saturday
}


let rnd = Int.random(in: 0...(Weekday.allCases.count - 1))
let day = Weekday.init(rawValue: rnd)

Weekday.allCases.randomElement()
for w in Weekday.allCases {
    print(w)
}






