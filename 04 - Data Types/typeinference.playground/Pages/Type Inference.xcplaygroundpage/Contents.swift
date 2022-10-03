import UIKit

/*:
 # Type Inference
 */

let num = 1234
//-> Int
type(of: num)
//어떻게 Int로 설정되는가?
//-> 초기 값으로 추론하여 타입 지정 (타입 추론)

let temp = 12.1
type(of: temp)

let str = "swfit"
type(of: str)

let booleanA = true
let booleanB = false
type(of: booleanA)
type(of: booleanB)


//let value //Type annotation missing in pattern
//  메모리 공간을 할당해야하는데, 자료형이 선언되지 않았다. -> 초기 값으로 추론하려했는데, 초기 값이 없다. -> 뭐임?
//: [Next](@next)
