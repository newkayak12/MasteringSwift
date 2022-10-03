import UIKit

/*:
 # Short-circuit Evaluation
 */


false && true // 처음이 false이면 뒤와 관계 없이 false
true || false // 처음이 true이면 뒤 확인 없이 true

var a: Int = 1;
var b: Int = 1;

func updateLeft() -> Bool {
    a += 1; //->SideEffect
//    return true
    return false
}
func updateRight() -> Bool {
    b += 1; //->SideEffects
    return true
}

if (updateLeft() || updateRight()){}
a
b

a = 1; // -> SideEffect
b = 1; // -> SideEffect
//의도와 다른 결과를 출력할 수 있기 때문에 통제 하에 진행되어야 한다. 

if (updateLeft() && updateRight()){}
a
b

