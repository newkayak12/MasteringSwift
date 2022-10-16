//
//: [Previous](@previous)

import Foundation

/*:
 # Anchored Option
 */
/**
    전체 문자열을 대상으로 검색하는 것이 아닌
    검색 범위를 문자열 시작/마지막으로 지정
 */

let str = "Swift Programming"
if let result = str.range(of: "Swift"){
    print(str.distance(from: str.startIndex, to: result.lowerBound))
} else {
    print("NOT FOUND")
}

if let result = str.range(of: "Swift", options: [.backwards]){
    print(str.distance(from: str.startIndex, to: result.lowerBound))
} else {
    print("NOT FOUND")
}

if let result = str.range(of: "Swift", options: [.anchored]){
    print(str.distance(from: str.startIndex, to: result.lowerBound))
} else {
    print("NOT FOUND")
}


if let result = str.range(of: "Swift", options: [.anchored, .backwards]){
    print(str.distance(from: str.startIndex, to: result.lowerBound))
} else {
    print("NOT FOUND")
}

str.lowercased().hasPrefix("swift")
if let _ = str.range(of: "swift", options: [.anchored, .caseInsensitive]){
    print("same")
}
str.lowercased().hasSuffix("swift")
if let _ = str.range(of: "swift", options: [.anchored, .caseInsensitive, .backwards]){
    print("same")
}


//: [Next](@next)
