import UIKit

/*:
 # Generics
 */

func swapInteger(lhs: inout Int, rhs: inout Int) {
   let tmp = lhs
   lhs = rhs
   rhs = tmp
}

var a = 10
var b = 20

swapInteger(lhs: &a, rhs: &b)
a
b


func swapInteger16(lhs: inout Int16, rhs: inout Int16) {
   // ...
}

func swapInteger64(lhs: inout Int64, rhs: inout Int64) {
   // ...
}

func swapDouble(lhs: inout Double, rhs: inout Double) {
   // ...
}


/*:
 ## Generic Function
 ![generic-function](generic-function.png)
 */

func swapValue<T>(lhs: inout T, rhs: inout T) {
   let tmp = lhs
   lhs = rhs
   rhs = tmp
}

a = 1
b = 2
swapValue(lhs: &a, rhs: &b)
a
b


var c = 1.2
var d = 3.4
swapValue(lhs: &c, rhs: &d  )
c
d

//포인터 사용하는거 같은데 그냥
//: [Next](@next)


