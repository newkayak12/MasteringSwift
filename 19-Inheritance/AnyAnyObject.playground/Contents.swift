
import Foundation

/*:
 # Any, AnyObject
 */
// Any는 값, 참조 형식
var data = 1
type(of: data)
//data = 1.0

var data2: Any = 1
data2 = 1.0
data2 = "String"
data2 = [1,2,3]
data2 = NSString()

//AnyObject는 Reference type만
//var obj: AnyObject = 123//값 형식 X



//Any, AnyObject는 -> Type Erasing Wrapper
if let str = data2 as? String { //NSString, String 상호 호환되는 형식 (Bridging이 가능)
    print(str.count)
} else if let list = data2 as? [Int]{
    print(list)
}



/*:
 # Type Casting Pattern
 */

switch data2 {
    case let str as String:
        print("String \(str)")
    case let list as [Int]:
        print("Int Array \(list)")
    case is Double:
        print("Double")
    default:
        break;
}















