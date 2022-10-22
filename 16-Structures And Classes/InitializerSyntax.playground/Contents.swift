import UIKit

/*:
 # Initializer Syntax
 ![init](init.png)
 */



let str = "123"
let num = Int(str) //생성자 호출

class Position {
    var x: Double
    var y: Double
    
    init(){
        self.x = 0
        self.y = 0
    }
    init(value: Double){
        self.x = value
        self.y = value
    }
}
var position: Position = Position()
position.x
position.y


position = Position(value: 1.2)
position.x
position.y

/*:
 ![call-init](call-init.png)
 */















