//
//: [Previous](@previous)

import Foundation

/*:
 # Regular Expression
 */

/**
    정규표현식
 */


let email = "user@example.com"
let pattern = "^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$"


if let _ = email.range(of: pattern){
    print("found")
} else {
    print("not found")
}

if let range = email.range(of: pattern, options: [.regularExpression]), (range.lowerBound, range.upperBound) == (email.startIndex, email.endIndex) {
    print("found")
} else {
    print("not found")
}




//: [Next](@next)
