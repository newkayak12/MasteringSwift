//
//: [Previous](@previous)

import Foundation

/*:
 # Removing Substrings
 */

var str = "Hello, Awesome Swift!!!"
let lastCharIndex = str.index(before: str.endIndex)
var removed  = str.remove(at: lastCharIndex)
str
removed

removed = str.removeFirst()
str

removed = str.removeLast()
str

str.removeFirst(2)
str

str.removeLast(2)
str

if let range = str.range(of: "awesome", options: [.caseInsensitive]){
    str.removeSubrange(range)
}

str.removeAll(keepingCapacity: true) //메모리 공간 유지
str.removeAll() //파라미터 없이 호출하면 메모리 공간도 삭제

str = "Hello, Awesome Swift!!!"
var subStr = str.dropLast()  //subString 리턴 -> 원본 문자열 메모리 공유
subStr = str.dropLast(3)

subStr = str.dropFirst(5)

subStr = str.drop(){
    return $0 != ","
}
subStr



