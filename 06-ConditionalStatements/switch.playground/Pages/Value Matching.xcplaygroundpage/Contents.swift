import UIKit

/*:
 # switch
 ## Syntax
 ![switch-syntax](switch-syntax.png)
 */

/**
 pattern, value matching에서 사용
 */
let num = 1

switch num {
case 1:
   print("one")
case 2, 3: //이렇게 ' , '로 조건을 여러 가지 추가할 수 있다.
   print("two or three")
default:
   print("others")
}
/**
 모든 블록은 한 줄 이상의 코드를 포함해야한다.
 -> default에서 아무런 것도 하기 싫다면 break; 정도로 마무리해도 된다.
 */



/*:
 ## Syntax
 ![where](where.png)
 */

switch num {
case let n where n <= 10:
   print(n)
default:
   print("others")
}





//: [Next](@next)
