//: [Previous](@previous)
import UIKit


/*:
 # Protocol Conformance
 ![is](is.png)
 ![as](as.png)
 */
//특정 형식이 프로토콜을 채용하고 있는지 여부


protocol Resettable {
   func reset()
}

class Size: Resettable {
   var width = 0.0
   var height = 0.0
   
   func reset() {
      width = 0.0
      height = 0.0
   }
}

let s = Size()
s is Resettable
s is ExpressibleByNilLiteral

let r = Size() as Resettable
(r as? Size)?.width


//: [Next](@next)
