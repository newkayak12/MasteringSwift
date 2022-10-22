import UIKit

/*:
 # Type Methods
 ![static-func](static-func.png)
 ![class-func](class-func.png)
 ![call](call.png)
 */


class Circle {
    static let pi = 3.14
    var radius = 0.0
    
    func getArea() -> Double {
        return self.radius * self.radius * Circle.pi
    }
    static func printPi(){
        print(pi)
    }
    
    class func printPi2(){
        print(pi)
    }
}

Circle.printPi()
Circle.pi

class StrokeCircle: Circle {
//    override static func printPi(){ //static 메소드는 override 못 함
//    }
    
    override static func printPi2() {//class키워드는 override가 가능(override 가능한 static 메소드
        print(pi)
    }
}













