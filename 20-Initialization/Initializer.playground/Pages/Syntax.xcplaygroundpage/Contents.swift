
import UIKit

/*:
 # Initialization
 
 ## Default Initializer
 */

class Position {
    var x = 0.0
    var y = 0.0
    var z: Double? = nil
    
    
//    init(){
//        self.y = 0.0
//    }
//    init(y: Double){
//        self.y = y
//    }
//     initializer를 따로 구현하지 않으면 defaultInitailizer를 제공한다.
//     initializer를 구현하면 defaultInitializer는 제공되지 않는다.ㄴ
}

let p = Position()





/*:
 ## Initializer Syntax
 ![initializer](initializer.png)
 ![call](call.png)
 */

class SizeObj {
    var width = 0.0
    var height = 0.0
    
    init(width: Double, height: Double){
        self.width = width
        self.height = height
    }
    convenience init(value: Double){
//        self.width = value
//        self.height = value
        
        //initializer deligation 이라고 한다. convenience 키워드를 붙혀주면 된다.
        self.init(width: value, height: value)
    }
}



/*:
 ## Memberwise Initializer
 */


struct SizeValue {
    var width = 0.0
    var height = 0.0
    
    //defaultInit 제공됨
    //struct는 여기에 하나더 제공한다.
    //-> MemberWise
    
}

let s = SizeValue()
let s2 = SizeValue(width: 1, height: 2)
