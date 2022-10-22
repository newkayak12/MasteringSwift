import UIKit

/*:
 # Instance Method
 ![Method](method.png)
 ![Call Method](call-method.png)
 */

class Simple {
    var data = 0
    static var sharedData = 123
    
    func doSomething() {
        print(data)
        print(Simple.sharedData)
    }
    func call() {
        self.doSomething()
    }
}

let a = Simple()
a.data
a.doSomething()
a.call()


class Size {
    var width = 0.0
    var height = 0.0
    
    func enlarge(){ //얼마든지 인스턴스 속성을 바꿀 수 있다.
        self.width += 1.0
        self.height += 1.0
    }
}


let s = Size()
s.enlarge()


struct SizeS{
    var width = 0.0
    var height = 0.0
    
    mutating func enlarge(){ //구조체는 mutating 키워드가 있어야 속성을 바꿀 수 있다.
        self.width += 1.0
        self.height += 1.0
    }
}

var s2 = SizeS()
s2.enlarge()















