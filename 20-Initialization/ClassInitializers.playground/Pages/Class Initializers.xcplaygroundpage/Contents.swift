import UIKit

/*:
 # Designated Initializer
 ![designated](designated.png)

 # Convenience Initializer
 ![convenience](convenience.png)
 */


class Position {
    var x: Double
    var y: Double
    
    convenience init (x: Double){
        self.init(x: x, y: 0)
    }
    
    init(x: Double, y: Double){
        self.x = x
        self.y = y
    }
}


//: [Next](@next)

