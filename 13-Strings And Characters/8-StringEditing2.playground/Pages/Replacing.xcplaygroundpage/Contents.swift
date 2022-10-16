import Foundation

/*:
 # Replacing Substrings
 */

var str = "Hello, Objective-C"
//str.replaceSubrange(str.index(after: str.firstIndex(of: " ")!) ... str.endIndex, with: "Swift")
if let range = str.range(of: "Objective-C"){
    str.replaceSubrange(range, with: "Swift")
}
str

if let range = str.range(of: "Hello") {
    let s = str.replacingCharacters(in: range, with: "Hi! ")
    s
}

str




var s = str.replacingOccurrences(of: "Swift", with: "Awesome Swift")

s = str.replacingOccurrences(of: "swift", with: "Awesome Swift") //대소문자 구분함 -> 원본 문자 리턴

s = str.replacingOccurrences(of: "swift", with: "Awesome Swift", options: [.caseInsensitive]) //대소문자 구문 안하도록 옵션(enum)



//: [Next](@next)


