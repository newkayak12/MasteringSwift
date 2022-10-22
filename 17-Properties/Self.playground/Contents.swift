import UIKit

/**
 Self 속성과
 Self 타입은 다르다.
 
 */
/*:
 # Self Type
 */

extension Int {
//   static let zero: Int = 0
    static let zero: Self = 0 //이렇게 Self로 지칭할 수 있다. Self는 현재 타입
/**
 Self는 현재 컨텍스트에서 타입 추론하기 때문에 범용적으로 사용할 수 있다.
 아래의 Double로 현재 코드를 모두 옮기려면 Int를 Double로 모두 바꿔야한다.
 */
    
   var zero: Int {
      return 0
   }

   func makeZero() -> Int {
      return Int()
   }
}


extension Double {
    static let zero: Self = 0
/**
이렇게 Self로 바꾸면 타입에 의존적이지 않게 된다.
 */
    
   var zero: Self {
      return 0
   }

   func makeZero() -> Self {
      return Self()
   }
}


Int.zero
Double.zero
