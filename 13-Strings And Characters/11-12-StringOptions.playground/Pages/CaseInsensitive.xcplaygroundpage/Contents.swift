//
import UIKit

/*:
 # Case Insensitive Option
 */
/**
    optioan 파라미터를 가진 곳에서 모두 사용할 수 있음
 */

"A" == "a"
"A".caseInsensitiveCompare("a") == .orderedSame
"A".compare("a", options: [.caseInsensitive]) == .orderedSame
                            // 형식 추론으로
//NSString.CompareOptions





//: [Next](@next)
