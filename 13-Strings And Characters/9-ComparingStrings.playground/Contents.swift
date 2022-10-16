//
import UIKit

/*:
 # Comparing Strings
 */


let largeA = "Apple"
let smallA = "apple"
let b = "Banana"

largeA == smallA
largeA != smallA

largeA < smallA
largeA < b
smallA < b //asciiCode

largeA.compare(smallA) == .orderedSame
largeA.caseInsensitiveCompare(smallA) == .orderedSame

largeA.compare(smallA, options: [.caseInsensitive]) == .orderedSame






let str = "Hello, Swift Programming!"
let prefix = "Hello"
let suffix = " Programming"
str.hasPrefix(prefix)
str.hasSuffix(suffix)

str.hasPrefix("hello") //caseInsensative가 없음
str.lowercased().hasPrefix("hello".lowercased())



