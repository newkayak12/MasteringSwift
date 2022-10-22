import UIKit

/*:
 # self
 ![self](self.png)
 */

class Size {
   var width = 0.0
   var height = 0.0
    
    func calcArea() -> Double {
        self.width * self.height
    }
    
    var area: Double {
        self.calcArea()
    }
    
    func update(width: Double, height: Double){
        self.width = width
        self.height = height
    }
    
    func doSomething(){
        //클로저에서 인스턴스 멤버에 접근하려면 self를 붙여 명시적으로 접근해서 캡쳐해야한다.
        let c = { self.width * self.height}
    }
    
    static let unit = ""
    static func doSomething(){
//        self.width// static에서 인스턴스 역시나 접근 불가능
        self.unit //static은 가능
//        unit //이렇게도 당연히 가능
    }
}

struct SizeS {
    var width = 0.0
    var height = 0.0
    
    mutating func reset(value: Double) {
//        width = value
//        height = value
        sef = SizeS(width: 12, height: 34)
    }
}




/*:
 # super
 ![super](super.png)
 */


