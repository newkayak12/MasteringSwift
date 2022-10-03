import UIKit

/*:
 # Overflow Operators
 */
Int8.min
Int8.max

//let num: Int8 = Int8.max + 1; //Arithmetic operation '127 + 1' (on type 'Int8') results in an overflow
//Swift는 overflow를 허용하지 않는다. (산술 연산자가 오버플로를 허용하지 않는다.)

/*:
 ## Overflow Addition Operator
 ````
 a &+ b
 ````
 */
let a: Int8 = Int8.max;
let b: Int8 = a &+ 1;

/*:
 ## Overflow Subtraction Operator
 ````
 a &- b
 ````
 */
let c: Int8 = Int8.min;
let d: Int8 = c &- 1;


/*:
 ## Overflow Multiplication Operator
 ````
 a &* b
 ````
 */

let e: Int8 = Int8.max &* 2;






