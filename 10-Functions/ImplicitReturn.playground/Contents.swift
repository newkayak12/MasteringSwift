import UIKit

/*:
 # Implicit Return
 
 ![ExplicitReturn](explicit-return.png)
 ![ImplicitReturn](implicit-return.png)
 */
/**
 명시적 리턴
 */


func add(a: Int, b: Int) -> Int {
//   return a + b
   a + b
    /**
     단일 표현이라면 'return'을 붙이지 않아도 리턴됨
     항상 사용할 수 있는 것은 아님 단일일 경우만 가능
     */
}

add(a: 1, b: 2)
