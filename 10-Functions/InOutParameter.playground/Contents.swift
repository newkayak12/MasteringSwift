
import UIKit

/*:
 # In-Out Parameters
 */

var num1 = 12
var num2 = 34
//파라미터는 임시 상수
func swapNumber(_ a: Int, with b: Int){
    var tmp = a
//    a = b
//    b = tmp
}

swapNumber(num1, with: num2)

/*:
 ## Syntax
 ![inout-def](inout-def.png)
 ![inout-call](inout-call.png)
 */

func swapNumbers(_ a: inout Int, with b: inout Int){ // defaultValue 설정을 할 수 없음
    var tmp = a
    a = b
    b = tmp
}
num1
num2
swapNumbers(&num1, with: &num2)  //pointer..?
num1
num2

let a = 12
let b = 34
//swapNumbers(&a, with: &b) // -> immutable x
//swapNumbers(&12, with: &23) // -> literal
//func sum (of nums: inout Int...){ // 가변 파라미터 사용 불가능 
//
//}




//FunctionNotation -> 함수 표기법

//functionName(label:)
//functionName(label:label:)
//functionName
func sayHello(){
    print("sayHello")
}
//-> sayHello
func sayHello(to name: String){
    print("hello \(name)");
}
// -> sayHello(to:) argument를 적지 않는다.

func sayHello(_ name: String){
    print("hello \(name)")
}
// -> sayHello(_:)
