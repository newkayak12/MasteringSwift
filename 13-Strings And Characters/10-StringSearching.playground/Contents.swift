//
import UIKit

/*:
 # Finding Substrings
 */


let str = "Hello, Swift!"
str.contains("Swift")
str.contains("swift")
str.lowercased().contains("swift".lowercased())

str.range(of: "Swift")
str.range(of: "swift", options: [.caseInsensitive])


let str2 = "Hello, Programming"
let str3 = str2.lowercased()

var common = str.commonPrefix(with: str2)
common = str.commonPrefix(with: str3, options: [.caseInsensitive]) //대소문자 구분

common = str3.commonPrefix(with: str, options: [.caseInsensitive]) //호출 대상이 되는 부분의 단어를 리턴



















