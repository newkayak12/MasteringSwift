
import Foundation

/*:
 # Protocol Composition
 ![composition](composition.png)
 */

protocol Resettable {
   func reset()
}

protocol Printable {
   func printValue()
}

class Size: Resettable, Printable {
   var width = 0.0
   var height = 0.0
   
   func reset() {
      width = 0.0
      height = 0.0
   }
   
   func printValue() {
      print(width, height)
   }
}

class Circle: Resettable {
   var radius = 0.0
   
   func reset() {
      radius = 0.0
   }
}

class Oval: Circle {
   
}

let r: Resettable = Size()
let p: Printable = Size()

//var rp: Resettable_Printable = Size() //이렇게 안됨..
var rp:Resettable & Printable = Size()
//rp = Circle()//불가능


/*:
 ![composition2](composition2.png)
 */

var cr: Circle & Resettable = Circle()
cr = Oval()















