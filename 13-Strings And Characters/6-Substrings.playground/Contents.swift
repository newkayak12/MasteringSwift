import UIKit

/*:
 # Substring
 */

let str = "Hello, Swift"
let l = str.lowercased()
var first = str.prefix(1) //subString으로 구현돼 있다. -> 원본 메모리에서 가져오는 방식
                          // 만약 문자열 (first)을 바꾸는 시점에 swift에서 알아서 새로운 메모리에 할당
                          // copy-on-write optimization이라고 한다.
first.insert("!", at: first.endIndex)

str
first


let newStr = String(str.prefix(1)) // 이러면 새로운 메모리 공간에 바로 넣을 수 있다.


/**
    > 문자열에서 특정 부분 추출
 */
//str.substring(to: str.index(str.startIndex, offsetBy: 2))
//'substring(to:)' is deprecated: Please use String slicing subscript with a 'partial range upto' operator.

//let s = str[0..<2]
//subscript(_:)' is unavailable: cannot subscript String with an integer range, use a String.Index range instead.

let s = str[str.startIndex ..< str.index(str.startIndex, offsetBy: 2)]
let os = str[..<str.index(str.startIndex, offsetBy: 2)] //oneSidedRange
str[str.index(str.startIndex, offsetBy: 2)...]


let lower = str.index(str.startIndex, offsetBy: 2)
let upper = str.index(str.startIndex, offsetBy: 5)
str[lower ... upper]






















