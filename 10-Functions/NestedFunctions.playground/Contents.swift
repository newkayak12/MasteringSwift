import UIKit

/*:
 # Nested Functions
 */


func outer() {
    print("outer");
}
func inner() {
    print("inner");
}
/**
 이건 그냥 함수
 */

func _outer() -> () -> (){
    /**
        outer 스코프
     */
    func _inner() {
        print("inner");
    }
    print("outer");
    return _inner;
}

/**
 글로벌
 */
let f = _outer();
f();
/**
 local에서 글로벌로 스코프 확장
 */
