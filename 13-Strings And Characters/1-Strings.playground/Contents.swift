import UIKit

/*:
 # Strings and Characters
 */

let s = "String"
let c = "C"
type(of: s)
type(of: c)
let c2: Character = "C"
type(of: c2)

//let emptyChar: Character = ""//아무 문자도 없으면 항상 문자'열'로 추론됨
let emptyChar: Character = " " //따라서 공백으로
let emptyString = " " //빈 문자열일까? -> No
let realEmpty = ""
let realEmpty2 = String()
emptyString.count
realEmpty.count
realEmpty2.count

/*:
 ## String Types
 */

//String의 구조체로 되어있고 값 형식 -> Swift
//참조로 하려면 NSString으로 해야함 -> Foundation 문자열

var nsStr: NSString = "str"
//var swStr: String = nsStr //바로 컨버팅 할 수 있는 것은 아님
var swStr: String = nsStr as String //타입 캐스팅
nsStr = swStr as NSString //반대도 같음
/**
 toll-free Bridged
 유니코드 처리 방식이 달라서 틀어질 수도 있음
 */

/*:
 ## Mutability
 */

//let, var로 정해짐
let immutable: String = "STR"
//immutable = "1"
var mutable: String = "STR"
mutable = "1"


/*:
 ## Unicode
 */

/**
 문자열을 저장할 떄 Unicode 독립적으로 저장
 */
let str = "Swift String"
/**
 UTF-8로 처리해야한다면?
 */
str.utf8
str.utf16


var thumbUp = "👍🏻"

//unicode 코드 scalar
//올린 엄지
//유니코드: U+1F44D U+1F3FB, UTF-8: F0 9F 91 8D F0 9F 8F BB"
thumbUp = "\u{1F3FB}"















