import UIKit

/*:
 # Property Requirements
 ![property](property.png)
 */

/**
 protocol의 멤버는 항상 var 가변성과는 관련이 없다.
 가변성은 get/ set과 관련이 깊다.
 
 */

protocol Figure {
    var name: String { get set } //최소 요구 사항이다.
    static var number: Int {get set}
}

struct Rectangle: Figure {
//    let name: String = "Rect" //set이 추가되면 최소 요구 사항을 충족시켜야 해서
    var name: String = "Rect" //var로 바꿔야한다.
    static var number: Int = 1
}

struct Triangle: Figure {
    var name: String = "Triangle" //그래서 여기서 꼭 읽기 전용으로 선언할 필요는 없다.
    static var number: Int = 1
}

struct Circle: Figure {
    var name: String {
        get{
            return "Circle"
        }
        set{
            
        }
    }
    static var number: Int = 1
}

class CircleClass: Figure {
    var name: String {
        get{
            return "Circle"
        }
        set{
            self.name = newValue
        }
    }
    class var number: Int {
        get{
            return 1
        }
        set{
            
        }
    }//override를 허용하려면 class 키워드로 바꿔야 한다.
}



