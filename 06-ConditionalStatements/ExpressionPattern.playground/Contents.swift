
import UIKit

/*:
 # Expression Pattern
 */

let a = 1
switch a {
case 0...10:
    print("0 ~ 10")
default:
    break;
}

/*:
 ## Pattern Matching Operator
 ````
 a ~= b
 ````
 */
/**
 ~=를 오버로딩하여 사용할 수 있다. 보통 equalTo와 동일하게 동작
 */
struct Size {
    var width = 0.0
    var height = 0.0
    static func ~=(left: Range<Int>, right: Size) -> Bool{
                    //switch pattern, switch target
        return left.contains(Int(right.width))
    }
}


let sz: Size = Size(width: 10, height: 20)
switch sz {
    case 1..<9:
        print("1 ~ 9")
    case 10..<99:
        print("10 ~ 99")
    default:
        break;
}
