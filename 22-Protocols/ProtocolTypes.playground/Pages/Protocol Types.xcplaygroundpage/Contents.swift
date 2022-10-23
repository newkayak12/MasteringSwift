import Foundation

/*:
 # Protocol Types
 */
/**
 protocol == first class citizen
 */


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
let r: Resettable = Size()
//r.width
r.reset()


//: [Next](@next)
