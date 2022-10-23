import UIKit

/*:
 # Initializer Delegation
 
 ## Value Type
 */

struct Size {
   var width: Double
   var height: Double

   init(w: Double, h: Double) {
      width = w
      height = h
   }

   init(value: Double) {
       self.init(w: value, h: value) //init 위임(initializer Deligation)
       /**
        모든 init이 실행되고 전체 속성이 초기화되어야만 Delegation이라고 함
        */
   }
}


/*:
 ## Class
 */
/**
 1. designate는 super의 designate를 호출해야한다. : Delegate Up
 2. convenience는 동일한 클래스의 다른 initializer를 호출해야한다. : Delegate Across (super의 init을 바로 호출 X)
 3. convenience를 호출했을 때 동일한 클래스의 Designate를 호출해야한다.
 */
class Figure {
    let name: String
    init(name: String){ //Desig
        self.name = name
    }
    convenience init(){
        self.init(name: "unknown")
    }
}

class Rectangle: Figure {
    var width: Double = 0
    var height: Double = 0
    
    init(n: String, w: Double, h: Double){
        width = w
        height = h //1단계에서 실행
        super.init(name: n)
        //2단계에서 실행
    }
    convenience init(value: Double){
        self.init(n: "rect", w: value, h: value)
    }
    
}

class Square: Rectangle {
    //stored property가 없으므로 부모의 이니셜라이저 상속
    convenience init(value: Double){
        self.init(n: "sqaure", w: value, h: value)
    }
    convenience init(){
        self.init(value: 0.0)
    }
}

/**
        초기화 단계
 1. 모든 속성 초기화, 중간에 초기화 실패하면 중단 (sub -> super)
 2. 1단계에서 할 수 없었던 부가적 초기화 (super -> sub순)
 */







