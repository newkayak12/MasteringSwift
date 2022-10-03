
//: [Previous](@previous)

import Foundation

/*:
 # Compound Assignment Operators
 */

/*:
 ## Addition Assignment Operator
 ````
 a += b
 a = a + b
 ````
 */

var a: Int = 1;
var b: Int = 2;
a = a + b;
a = 1;
b = 2;
a += b;


/*:
 ## Subtraction Assignment Operator
 ````
 a -= b
 a = a - b
 ````
 */
var c: Int = 1;
var d: Int = 2;
c = c - d;
c = 1;
d = 2;
c -= d;



/*:
 ## Multiplication Assignment Operator
 ````
 a *= b
 a = a * b
 ````
 */
var e: Int = 1;
var f: Int = 2;
e = e * f;
e = 1;
f = 2;
e *= f;



/*:
 ## Division Assignment Operator
 ````
 a /= b
 a = a / b
 ````
 */
var g: Int = 4;
var h: Int = 2;
g = g / h;
g = 1;
h = 2;
g /= h;


/*:
 ## Modulo Assignment Operator
 ````
 a %= b
 a = a % b
 ````
 */

var i: Int = 4;
var j: Int = 2;
i = i % j;
i = 1;
j = 2;
i %= j;

/*:
 ## Bitwise AND Assignment Operator
 ````
 a &= b
 a = a & b
 ````
 */
var k: UInt8 = 0b1111_1111;
var l: UInt8 = 0b0000_0001;
k = k & l
k = 0b1111_1111;
k &= l;

/*:
 ## Bitwise OR Assignment Operator
 ````
 a |= b
 a = a | b
 ````
 */
var m: UInt8 = 0b1111_1111;
var n: UInt8 = 0b0000_0001;
m = m | n;
m = 0b1111_1111;
m |= n;
/*:
 ## Bitwise XOR Assignment Operator
 ````
 a ^= b
 a = a ^ b
 ````
 */
var o: UInt8 = 0b1111_1111;
var p: UInt8 = 0b0000_0001;
o = o ^ p;
o = 0b1111_1111;
o ^= p;
/*:
 ## Bitwise Left Shift Assignment Operator
 ````
 a <<= b
 a = a << b
 ````
 */
var q: UInt8 = 0b1111_1111;
var r: UInt8 = 0b0000_0001;
q = q << r;
q = 0b1111_1111;
q <<= r;
/*:
 ## Bitwise Right Shift Assignment Operator
 ````
 a >>= b
 a = a >> b
 ````
 */
var s: UInt8 = 0b1111_1111;
var t: UInt8 = 0b0000_0001;
s = s >> t;
s = 0b1111_1111;
s >>= t;








