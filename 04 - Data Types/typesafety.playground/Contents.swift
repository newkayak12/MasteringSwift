import UIKit

/*:
 # Type Safety
 */


//값을 잘못된 방식으로 사용하는 것을 방지하기 위한
//let str: String = 1234 //와 같은 것은 사용 할 수 없음
//let num: Int = 1.234 //수를 저장하는 것도 안된다.
let a = 8
//let b: Int8 = a // 이것도 호환되지 않는다. (메모리 크기 차이로 값이 유실됨)

let b = a //가능
//let c: Int64 = a //불가능

//물론 타입 변환하면 가능함

let z = 12
let x = 3.4151234
//let result = z + x //이것도 안됨..

//let rate: Int = 1.94 //C 계열은 1로 저장하지만 스위프트는 조금 더 엄격함
let rate = 1.94
let amt = 10_000_000
//let reuslt = rate * amt; //Double * Int라서 오류
//두 값의 자료형을 일치 시켜야 한다.

let result = rate * Double(amt)
type(of: result)
//Int로 받고 싶다면??

let result1 = Int(rate * Double(amt))
let result2 = Int(rate) * amt












