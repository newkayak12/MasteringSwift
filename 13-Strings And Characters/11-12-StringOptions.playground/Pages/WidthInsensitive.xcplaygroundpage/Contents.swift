
//
//: [Previous](@previous)

import Foundation

/*:
 # Width Insensitive Option
 */
/**
 전각(영문의 고정폭 기준 2배)/ 반각(전각의 반)문자
 */
let a = "\u{30A1}"
let b = "\u{ff67}"

a == b
a.compare(b) == .orderedSame
a.compare(b, options: [.widthInsensitive]) == .orderedSame


//: [Next](@next)
