import UIKit

/*:
 # Value Types and Reference Types
 ![val-ref](val-ref.png)
 */

struct PositionValue {
    var x = 0.0
    var y = 0.0
}
class PositionReference {
    var x = 0.0
    var y = 0.0
}

var v = PositionValue()
var o = PositionReference()


var v2 = v
var o2 = o

v2.x = 12
v2.y = 34

v
v2


o2.x = 12
o2.y = 34

o
o2

