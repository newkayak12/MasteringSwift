import UIKit

/*:
 # Deinitializer
 ![deinit](deinit.png)
 */
//클래스 전용, deinit은 하나로 제한, 인스턴스가 메모리에서 해제되기 직전에 자동 실행됨


class Size {
   var width = 0.0
   var height = 0.0
}

class Position {
   var x = 0.0
   var y = 0.0
}

class Rect {
   var origin = Position()
   var size = Size()
    
    deinit {
        print("deinit \(self)")
        //이 블록을 끝내기 직전까지는 self에 접근 가능
    }
}

var r: Rect? = Rect()
r = nil
