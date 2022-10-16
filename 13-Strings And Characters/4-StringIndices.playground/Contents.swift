import UIKit

/*:
 # String Index
 */

let str = "Swift"
/**
 Swifts는 인덱스 타입을 따로 가지고 있다.
 */

str.startIndex
let firstCh = str[str.startIndex]
//subscript로 접근
print(firstCh)
//let lastCh = str[str.endIndex]
/**
 error: Execution was interrupted, reason: EXC_BREAKPOINT (code=1, subcode=0x103f2f23c).
 The process has been left at the point where it was interrupted, use "thread return -x" to return to the state before expression evaluation.

 마지막 문자 다음의 인덱스를 반환한다. (endIndex)
 */
let lastIndex = str.index(before: str.endIndex)
let lastCh = str[lastIndex]
print(lastCh)

let secondCharIndex = str.index(after: str.startIndex)
let secondChar = str[secondCharIndex]

var thirdCharIndex = str.index(after: secondCharIndex)
thirdCharIndex = str.index(str.startIndex, offsetBy: 2)
var thirdChar = str[thirdCharIndex]
print(thirdChar)

thirdCharIndex = str.index(str.endIndex, offsetBy: -3)
thirdChar  = str[thirdCharIndex]
print(thirdChar)
/**
    올바른 인덱스를 보내지 않으면 compileError가 아닌 RuntimeError
    인덱스 범위를 장담할 수 없다면 if 처리
 */
if thirdCharIndex < str.endIndex && thirdCharIndex >= str.startIndex {
    ///
}







