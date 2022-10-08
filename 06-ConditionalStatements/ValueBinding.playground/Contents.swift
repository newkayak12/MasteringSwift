import UIKit

/*:
 # Value Binding Pattern
 ## Syntax
 ![value-binding](value-binding.png)
 */



/**
 매칭 시킬 값이 아닌 바인딩할 이름이 따라온다.
 매칭 시킬 대상을 상수,변수로 바인딩하고 사용하는
 */
let a = 1
switch a {
    case let x where x > 2:
        print(x)
    case let y where y > 1:
        print(y)
    case let z where z > 0:
        print(z)
    default:
        break;
}
/**
 이와 같이 변수 바인딩은 where와 주로 사용된다.
 case block 안에서 값을 바꿔야한다면 변수로 바인딩하면 된다.
 
 
 valueBinding은 Tuple 매칭에서도 사용된다.
 */
let pt = (1,2)
print(pt)
switch pt {
    case var (x,y):
        print(x*2,y+1)
    case (let a, var b) :
        print(a, b)
    case let (y,_):
        print(y)
        //이와 같이 필요 없는 경우 와일드 카드로 매핑할 수도 있다.
    default:
        break;
}















