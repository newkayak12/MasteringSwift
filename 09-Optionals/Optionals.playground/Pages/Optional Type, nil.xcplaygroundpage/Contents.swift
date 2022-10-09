
import UIKit

/*:
 # Optionals
 */


//let num: Int;
//print(num) //값을 읽기 전에 반드시 초기화 해야한다.
let optionalNum: Int? = nil;
print(optionalNum)

/*:
 ## Optional Type
 ![optional-type-syntax](optional-type-syntax.png)
 */

//let str: String = nil  //NonOptional이면 nil이 올 수 없다.
let str: String = "Swift";
let optionalStr: String? = nil;
let a: Int? = nil;
let b = a; // -> Int?
b //optionalExpression

//: [Next](@next)
