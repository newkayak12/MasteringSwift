import UIKit

/*:
 # Overriding
 */


class Figure {
   var name = "Unknown"

   init(name: String) {
      self.name = name
   }

   func draw() {
      print("draw \(name)")
   }
    
   final func reDraw(){
        print("ReDraw")
   }
}

class Circle: Figure {
   var radius = 0.0
    var diameter: Double{
        return self.radius * 2
    }
    
    override func draw() { //상위 구현 무시 만약 상위 메소드를 이용하려면 super로 사용할 수 있다.
        super.draw()
        print("⚪️")
    }
    
//    override func reDraw(){ // final으로 선언되면 override 금지
//    }
}

let c = Circle(name: "Circle")
c.draw()

class Oval: Circle {
//observe
    override var radius: Double {
        willSet{
            print(newValue)
        }
        didSet{
            print(oldValue)
        }
    }

//computed
//    override var radius: Double {
//        get{
//            return super.radius
//        }
//        set{
//            super.radius = newValue
//        }
//    }
    //속성은 computed, property observer로 오버라이드 해야한다.
    //읽기 쓰기가 모두 가능했다면 읽기 전용으로 구현 할수 없다.
    
    override var diameter: Double {
        get {
            return super.diameter
        }
        set {
            super.radius =  newValue / 2
            //상위에서 diameter가 읽기 전용이므로 super.diameter에 set할 수 없다.
            //또한 property Observer는 읽기 전용 속성을 감시할 수 없기에 여기서 구현할 수 없다.
        }
    }
}

let o = Oval(name: "Oval")
o.radius
o.reDraw()












