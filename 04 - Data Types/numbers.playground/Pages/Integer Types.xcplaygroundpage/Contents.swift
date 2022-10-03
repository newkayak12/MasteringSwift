import UIKit

//: [Previous](@previous)
/*:
 # Integer Types
 
 ![IntegerTypes](integer-types.png)
 */
// Int 뒤는 비트이다.
//Int8의 최소/ 최대는 -128 ~ 127 이 사이의 숫자를 저장할 수 있다.
print(Int8.min, Int8.max);
// 저장할 수 있는 사이즈는 1byte이다.
print(MemoryLayout<Int8>.size)
print(MemoryLayout<Int64>.size) //8바이트



/*:
 ## Signed vs Unsigned
 
 ![SignedUnsigned](signed-unsigned.png)
 */

//Signed는 +,-가 있는
//UnSigned는 양수만 저장하는 타입이다.
// 이 둘은 메모리 공간 크기는 같으나 저장할 수 있는 수의 범위가 다르다.
print(Int8.min, Int8.max)
print(UInt8.min, UInt8.max)
//

/*:
 ## Int & UInt
 */
MemoryLayout<Int>.size //CPU가 32/64비트냐에 따라 달라진다.
Int.min
Int.max

let num = 1234
//이와 같이 사용하면 타입 추정으로 Int로 저장
let num2: Int = 1234
//이와 같이 명시할 수도 있다.
//: [Next](@next)
