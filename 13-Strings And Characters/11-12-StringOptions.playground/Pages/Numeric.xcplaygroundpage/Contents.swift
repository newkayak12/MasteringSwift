//
//: [Previous](@previous)

import UIKit

/*:
 # Numeric Option
 */

"A" < "B"
"a" < "B" //문자에 할당된 코드의 크기를 비교

let file9 = "file9.txt"
let file10 = "file10.txt"
file9 < file10
file9.compare(file10) == .orderedAscending
file9.compare(file10, options: [.numeric]) == .orderedAscending





//: [Next](@next)
