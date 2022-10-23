import UIKit

/*:
 # Failable Initializer
 ![failable](failable.png)
 */

//만약 파일을 기반으로 인스턴스를 초기화한다면? -> 초기화에 실패한다.
/**
 Failable Initializer는 실패를 허용한다. -> NIL을 return 한다.
 */

struct Position {
   let x: Double
   let y: Double
    
    init?(x: Double, y: Double) {
        guard x >= 0.0, y >= 0.0 else {return nil}
        
        self.x = x
        self.y = y
    }
    
    init!(value: Double){ //IUO 동작 방식이 변경되어서 nil 리턴
        guard value >= 0.0 else {return nil}
        
//        self.x = value
//        self.y = value
        self.init(x: value, y: value) //failable은 failable, nonFailable 모두 부를 수 있지만 nonFailable은 그렇지 않다.
    }
    
//    init(value: Double){ //initializer는 nonFail이든 failable이든 구분 X
//
//    }
}

var p = Position(x: 1.2, y: 1)
p = Position(x: -1.2, y: 1)

var p2: Position = Position(value: 1) //이렇게 추출된 형태로 지정해 놓고
//p2 = Position(value: -1) //fail을 내보내면 ... 원래대로 Crash






