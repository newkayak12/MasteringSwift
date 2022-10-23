import UIKit

/*:
 # Initializer Requirements
 ![init](init.png)
 */


protocol Figure {
    var name: String { get set }
    init(n: String)
}

struct Rectangle: Figure {
    var name: String
    init(n: String) {
        self.name = n
    }
}
class Circle: Figure {
    var name: String
    
    required init(n: String) { //꼭 구현해야하고, class는 상속을 고려하여 모든 요구 사항을 충족시켜야하므로 required로 선언해야함
        self.name = n
    }
}

final class Triangle: Figure { //상속이 불가능하므로 required가 필요 없음
    var name: String
    init(n: String){
        self.name = n
    }
}
//중복이다
class Oval: Circle/*, Figure*/ {
    var prop: Int
    init(){
        self.prop = 0
        super.init(n: "Oval")
    }
    required convenience init(n: String) {
        self.init()
    }
}

protocol GrayScale {
    init(white: Double)
    init?(red: Double)
}

struct Color: GrayScale {
//    init?(white: Double){ //Non-failable initializer requirement 'init(white:)' cannot be satisfied by a failable initializer ('init?')
//    }
    init!(white: Double){
        //실패하면 Crash
    }
    init?(red: Double) {
        //init(red: Double)도 문제 없음
    }
}
