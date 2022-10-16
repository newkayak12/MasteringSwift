import UIKit

/*:
 # Character Set
 */


let a = CharacterSet.uppercaseLetters
let b = a.inverted // 대문자 이외의 모든 문자셋
var str = "loRem Ipsum"
var charSet = CharacterSet.uppercaseLetters
if let range = str.rangeOfCharacter(from: charSet) {
    print(str.distance(from: str.startIndex, to: range.lowerBound))
}
if let range = str.rangeOfCharacter(from: charSet, options: [.backwards]) {
    print(str.distance(from: str.startIndex, to: range.lowerBound))
}
str = " A p p l e"
charSet = CharacterSet.whitespaces
let trimmed = str.trimmingCharacters(in: charSet)
print(trimmed)

var editTarget = CharacterSet.uppercaseLetters
editTarget.insert("#") //단일
editTarget.insert(charactersIn: "~!@") //여러
editTarget.remove("A")
editTarget.remove(charactersIn: "BCD")


let customCharSet = CharacterSet(charactersIn: "@.")
let email = "userId@example.com"
let components = email.components(separatedBy: customCharSet)
debugPrint(components)
