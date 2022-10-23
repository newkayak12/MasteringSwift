import UIKit

/*:
 # Method Requirements
 ![method](method.png)
 */


// mutating -> 메소드에서 값을 변경해야한다는 의미(struct에서와 유사 ) 참조 형식에서도 사용 가능


protocol Resettable{
    mutating func reset() //값 타입에서 속성을 바꾼다면 mutating이 있어야 한다.
    static func reset()
}

class SizeC: Resettable {
    var width = 0.0
    var height = 0.0
    
    func reset() { //mutating이 없어도 자유롭게 변경 가능
        self.width = 0.0
        self.height = 0.0
    }
    static /*class*/ func reset() {
        print("static")
    }
}

struct SizeS: Resettable {
    var width = 0.0
    var height = 0.0
    
    mutating func reset() {
        self.width = 0.0
        self.height = 0.0
    }
    
    static func reset() {
        print("static")
    }
}
