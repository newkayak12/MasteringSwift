import Foundation
//: [Previous](@previous)



/*:
 # Collections of Protocol Types
 */


protocol Figure {
   func draw()
}

struct Triangle: Figure {
   func draw() {
      print("draw triangle")
   }
}

class Rectangle: Figure {
   func draw() {
      print("draw rect")
   }
}

struct Circle: Figure {
   var radius = 0.0

   func draw() {
      print("draw circle")
   }
}

let t = Triangle()
let r = Rectangle()
let c = Circle()

//let list = [t, r, c] //Heterogeneous collection literal could only be inferred to '[Any]'; add explicit type annotation if this is intentional

let list: [Figure] = [t, r, c] //이러면 캐스팅해서 저장

for item in list {
    item.draw()
    if let c = item as? Circle {
        c.radius
    }
}



