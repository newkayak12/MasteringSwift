import UIKit

/*:
 # Type Conversion
 
 ## Syntax
 ![TypeConversion](type-conversion.png)
 */


// Type Conversion : 형변환 -> 메모리에 저장된 값을 다른 형식으로 바꿔서 새로운 값으로
// Type Casting : 형변환?? -> 컴파일러 선에서 다른 타입으로 처리하도록 시킴

let a = 123 //Int
let b = 4.23 //Double

//a + b//  역시 안됌
// a를 Double  혹은 b를 Int로
Double(a) + b //1234.0 + 4.23
a + Int(b) //1234 + 4

let c: Int8 = Int8(a)

let d = Int.max
//let e = Int8(d) //Not enough bits to represent the passed value

let str: String = "123"
let num = Int(str)

let str2: String = "number"
let num2 = Int(str2)
//??!! typeConversion에서 nil이 출력될 수 있다.













