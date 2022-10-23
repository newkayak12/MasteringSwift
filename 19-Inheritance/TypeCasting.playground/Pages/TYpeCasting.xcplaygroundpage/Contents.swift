import UIKit

/*:
 # Type Casting
 */
//인스턴스 형식을 확인하거나 다른 타입으로 처리

class Figure {
   let name: String
   
   init(name: String) {
      self.name = name
   }
   
   func draw() {
      print("draw \(name)")
   }
}

class Triangle: Figure {
   override func draw() {
      super.draw()
      print("🔺")
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

class Circle: Figure {
   var radius = 0.0
   
   override func draw() {
      super.draw()
      print("🔴")
   }
}



/*:
 ## Type Check Operator
 ![type-check](type-check.png)
 */

let num = 123
num is Int
num is Double
num is String


let t = Triangle(name: "Triangle")
let r = Rectangle(name: "Rectangle")
let s = Square(name: "Sqaure")
let c = Circle(name: "Circle")

r is Rectangle
r is Figure
r is Square

//typeCheck는 런타임에 실행됨
/*:
 ## Type Casting Operator
 ![type-casting](type-casting.png)
 */

//새로운 인스턴스로 리턴하는 것이 아닌 임시 인스턴스를 리턴
//compileTimme cast는 bridge를 해준다.

let nsStr = "Str" as NSString
//"String" as Int //컴파일 타임이기 때문에 컴파일 에러를 뿜는다

//Runtime Cast는 compileTime에는 결과를 알 수 없다.
t as? Triangle
t as! Triangle

var upCasted: Figure = s
upCasted = s as Figure
//Upcast는 항상 안전하고 성공한다.

//원래 형식
upCasted as? Square
upCasted as! Square

//원래 형식의 Super
upCasted as? Rectangle
upCasted as! Rectangle

upCasted as? Circle //nil
//upCasted as! Circle //crash

if let c = upCasted as? Circle {
    print(c)
}

let list = [t,r,s,c]
//서로 공통된, 가장 인접한 super 클래스로 타입이 잡힌다.

for item in list {
    item.draw()
    if let r = item as? Circle {
        print(r.radius)
    }
}


