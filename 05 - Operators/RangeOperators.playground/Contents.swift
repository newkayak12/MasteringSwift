
import UIKit

/*:
 # Range Operators
 */
//범위 표현을 위해서 1 ~ 5와 같이 사용한다.
//스위프트에서는 범위 연산자를 사용해서 범위를 표현한다.

/*:
 ## Closed Range Operator
 ````
 a ... b
 a...
 ...a
 ````
 */
//이항, 단항 연산자로 사용할 경우가 있다. 단항일 경우 피연산자와 붙여서 사용해야한다.
//closedRange에서는 upperBound가 포함된다. 또한 lower가 upperbound보다 작아야만 한다.(오름차순)

1 ... 10
//내림차순으로 사용하고 싶다면
(1 ... 10).reversed()
(12.34 ... 56.82)//와 같이 실수도 가능하다.
var sum = 0;
for num in 1 ... 10 {
    sum += num;
}
print(sum)


let list = ["A", "B", "C", "D", "E"]
list[2...]
list[...2]
//단항이면 low, upper 알아서 잡는다.

/*:
 ## Half-Open Range Operator
 ````
 a ..< b
 ..<a
 ````
 */

//upperbound가 포함되지 않는다.

sum = 0;
for num in 1 ..< 10{
    sum += num
}
print(sum)

list
list[..<2]

//for num in ..<10{
//    print(num)
//}

//For-in loop requires 'PartialRangeUpTo<Int>' to conform to 'Sequence'
//문법적으로 지원되지 않음

let range = 0 ... 5;
//특정 값이 범위에 속하는지 확인
range.contains(2)
range.contains(7)

let range2 = ...10;
range2.contains(-1)
//lowBound가 무한대라고 생각하면 됨

//let range3: UInt = ...255;
//range3.words.contains(-1)


