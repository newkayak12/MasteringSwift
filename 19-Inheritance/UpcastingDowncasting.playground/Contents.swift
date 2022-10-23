import UIKit

/*:
 # Upcasting & Download Casting
 */

class Figure {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func draw() {
        print("draw \(name)")
    }
}

class Rectangle: Figure {
    var width = 0.0
    var height = 0.0
    
    override func draw() {
        super.draw()
        print("⬛️ \(width) x \(height)")
    }
}

class Square: Rectangle {
   
}

let f = Figure(name: "Unknown")
f.name

let r = Rectangle(name: "Rectangle")
r.width
r.height
r.name

var s: Figure = Square(name: "Square")
//upCasting
//s.width
//s.height
s.name

let downCastingS = s as! Square
downCastingS.width
downCastingS.name
downCastingS.height

let downCastingR = s as! Rectangle


class Rhombus: Square {
    var angle = 45.0
}

//let dr = s as! Rhombus
//이런식의 다운 캐스팅 안됨
