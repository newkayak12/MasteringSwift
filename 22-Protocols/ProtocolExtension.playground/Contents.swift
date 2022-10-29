import UIKit

/*:
 # Protocol Extension
 */

protocol Figure  {
    var name: String { get }
    func draw()
}


extension Figure where Self: Equatable{//extension의 제약조건
    func draw(){
        print("draw figure")
    }
}

struct Rectangle: Figure, Equatable { //extension에서 draw를 구현했다.
    var name = ""
//    func draw() {
//        print("draw rect")
//    }
}

let r = Rectangle()
r.draw()
