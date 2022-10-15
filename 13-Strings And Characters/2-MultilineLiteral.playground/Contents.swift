import UIKit

/*:
 # Multiline String Literal
 */

let multiLine: String = """
S
    W
I
        F
T
"""

/**
 주의점
    1. 첫 """ 에서 단을 내리고 시작해야한다.
    2. 마지막 """도 단을 내리고 끝나야하며, 시작 위치에 있어야 한다.
    3. 각 리터럴의 depth는 마지막 """ 기준으로 들여쓰기가 된다.
    4. multiline의 문장 마지막 \은 줄 바꿈을 무시한다는 의미이다.
    5. multiLine String Literal은 singleLine과는 처리가 조금 다르다.
 */
print(multiLine)


/*:
 # Row String
 */
/**
    문자 그대로 표현
 > 정규식에 사용할 수 있음
 */
var str = "\"Hello\", Swift 5"
var rawStr = #"\"Hello\", Swift 5"#
var test = #""Hello", Swift 5"#

print(str)
print(rawStr)
print(test)

str = "Lorem\nIpsum"
rawStr = #"Lorem\nIpsum"#
var rawEscapeStr = #"Lorem\#nIpsum"#
/**
 #은 항상 동일 개수로
 */
print(str)
print(rawStr)
print(rawEscapeStr)

let value = 1234
str  = "value is \(value)"
rawStr = #"value is \#(value)"#

print(str)
print(rawStr)


/**
 regExp
 */

var zipCodeRegx = "^\\d{3}-?\\d{3}$"
var zipCodeRaw = #"^\d{3}-?\d{3}$"#
let zipCode = "123-456"
if let _ = zipCode.range(of: zipCodeRegx, options: [.regularExpression]){
    print("valid")
}
if let _ = zipCode.range(of: zipCodeRaw, options: [.regularExpression]){
    print("valid")
}





















