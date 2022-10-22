import UIKit

/*:
 # Property Observer
 ![property-observer](property-observer.png)
 */
/**
        willSet 변수명 생략하면 newValue
        didSet 변수명 생략하면 oldvalue
        상수는 값이 변경되지 않기 떄문에 감시라는 개념이 없다.-> PropertyObserver X
        lazy, computed 역시 Observer X
        
        computed는 subClass에서 override하고 observer 구현이 가능
        PropertyObserver 구현하려면 willSet, didSet 둘 중 하나는 최소한 구현해야한다.
 */
class Size {
    var width = 0.0 {
        willSet{
            print("old: \(width) => new: \(newValue)")
        }
        didSet {
            print("old: \(oldValue) => new: \(width)")
        }
    }
}

let a: Size = Size()
a.width = 20

