import UIKit

/*:
 # Arithmetic Operators
 */
let a = 12
let b = 34
let c = -7

/*:
 ## Unary Plus Operator
 ````
 +a
 ````
 */
+a
+b


/*:
 ## Addition Operator
 ````
 a + b
 ````
 */
a + b;


/*:
 ## Unary Minus Operator
 ````
 -a
 ````
 */
-a
-b
-c

/*:
 ## Subtraction Operator
 ````
 a - b
 ````
 */
a - b;


/*:
 ## Multiplication Operator
 ````
 a * b
 ````
 */
a * b;


/*:
 ## Division Operator
 ````
 a / b
 ````
 */
a / b; //Int이기에 소수점 버려지고 Int로 바뀜
let d = Double(a)
let e = Double(b)
d / e;
b / a;


/*:
 ## Remainder Operator (Modulo Operator)
 ````
 a % b
 ````
 */
a % b;
//d % e; //'%' is unavailable: For floating point numbers use truncatingRemainder instead
d.truncatingRemainder(dividingBy: e);


/*:
 ## Overflow
 */

//let num: Int8 = 9 * 9 * 9;
//Swift에서는 overflow를 허용하지 않는다. overflow 연산자를 따로 사용해야한다.
//물론 컴파일 타임에서  모든 overflow를 걸러낼 수는 없다.
// 런타임에 발생할 수도 있다.


