import UIKit

/*:
 # Value Types & Reference Types
 */

struct SizeValue {
   var width = 0.0
   var height = 0.0
}

var value = SizeValue()


var value2 = value
value2.width = 1.0
value2.height = 2.0

value
value2


class SizeObject {
   var width = 0.0
   var height = 0.0
}

var object = SizeObject()

var object2 = object

object2.width = 1.0
object2.height = 2.0

object
object2



let v = SizeValue()


let o = SizeObject()
o.width = 1.0
o.height = 2.0











