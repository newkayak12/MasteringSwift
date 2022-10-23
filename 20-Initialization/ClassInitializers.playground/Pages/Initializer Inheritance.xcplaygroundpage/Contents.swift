import Foundation
//: [Previous](@previous)



/*:
 # Initializer Inheritance
 */
class Figure {
   var name: String

   init(name: String) {
      self.name = name
   }
    convenience init() {
        self.init(name: "unknown")
    }
   func draw() {
      print("draw \(name)")
   }
}

class Rectangle: Figure {
   var width: Double
   var height: Double
    
    init(width: Double, height: Double, name: String){
        self.width = width
        self.height = height
        super.init(name: name)
    }
    
    override init(name: String){
        width = 0
        height = 0
        super.init(name: name)
    }
    convenience init() {
        self.init(name: "unknown")
    }//convenience는 super를 부를 수 없다. 따라서 override 개념이 없다.
}

