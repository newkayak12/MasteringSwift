

import Foundation

/*:
 # Required Initializer
 ![required](required.png)
 */

class Figure {
   var name: String

    required init(name: String) { //required를 선언하면 꼭 subClass에서 구현해야한다. (단, 다른 속성이 초기화 되지 않았다면)
      self.name = name
   }

   func draw() {
      print("draw \(name)")
   }
}

class Rectangle: Figure {
   var width = 0.0
   var height = 0.0

    init(){
        width = 0
        height = 0
        super.init(name: "unknown")
    }
    required init(name: String) {//형태가 같은데 override 등의 키워드가 없는 이유? 이 클래스를 상속받는 하위 클래스에서도 같은 형태를 강제하기 위해서
        width = 0
        height = 0
        super.init(name: name)
    }
}


