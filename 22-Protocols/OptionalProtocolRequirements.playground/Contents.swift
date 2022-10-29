
import UIKit

/*:
 # Optional Protocol Requirements
 ![optional](optional.png)
 */
//@objc : 스위프트에서 작성한 코드를 Objective-c에서 사용할 수 있게 해준다.
//클래스 전용이다. AnyObject 프로토콜을 자동으로 상속받기 떄문이다. (두 언어의 호환성을 위해서)
//@objc optional은 프로토콜을 꼭 채택하지 않아도 되게끔 해준다.

@objc protocol Drawable {
   @objc optional var strokeWidth: Double { get set }
   @objc optional var strokeColor: UIColor { get set }
   func draw()
   @objc optional func reset()
}

class Rectangle: Drawable {
    func draw() {
            
    }
}

let r: Drawable = Rectangle()
r.draw();
//@objc optional로 선언하면 Optional Chaining해야한다.
var cl: UIColor? = r.strokeColor
var wd: Double? = r.strokeWidth
r.reset?()


