//
//: [Previous](@previous)

import Foundation

/*:
 # Backwards Option
 */
/**
    검색 방향
 */
let korean = "행복하세요"
let english = "Be happy"
let arabic = "كن سعيدا"


if let range = english.range(of: "p"){
    english.distance(from: english.startIndex, to: range.lowerBound)
}

if let range = english.range(of: "p", options: [.backwards]){
    english.distance(from: english.startIndex, to: range.lowerBound)
}




//: [Next](@next)
