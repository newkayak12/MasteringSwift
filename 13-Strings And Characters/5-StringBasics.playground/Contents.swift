import UIKit

/*:
 # String Basics
 */

var str = "Hello, Swift String"
var emptyStr = ""
emptyStr = String()


let a = String(true)

let b = String(12)

let c = String(1312.2231)

let d = String(str)

let hex = String(123, radix: 16)
let octal = String(123, radix: 8)
let binary = String(123, radix: 2)


let repeatStr = String(repeating: "💕", count: 100)
print(repeatStr)

let repeatScalar = "\u{1f44f}"

let e = "\(a) \(b)"
let f = a + b
str += "!!!!!!"


let count = repeatStr.count
let isEmpty = emptyStr.isEmpty


str == "Apple"
"apple" != "Apple"
"apple".caseInsensitiveCompare("Apple")

"apple" > "Apple"

str.lowercased() //-ed, -ing로 끝나는 메소드는 원본은 건들지 않는다.
str.uppercased()
str.capitalized

"apple ipad pro".capitalized
/**
 String == Character Sequence
 -> for in 사용 가능
 */

for char in "Hello" {
    print(char)
}

let num = "123551203498123213948721394"
num.randomElement()
num.shuffled()
