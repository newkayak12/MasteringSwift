//
//: [Previous](@previous)

import Foundation

/*:
 # Literal Option
 */
let a = "\u{D55C}"
let b = "\u{1112}\u{1161}\u{11AB}"

a == b
a.compare(b) == .orderedSame


//Objective-C 코드 유닛을 비교
//literal 옵션을 사용하는 것이 더 빠르게 비교한다.
a.compare(b, options: [.literal]) == .orderedSame
a.compare("한", options: [.literal]) == .orderedSame





//: [Next](@next)
