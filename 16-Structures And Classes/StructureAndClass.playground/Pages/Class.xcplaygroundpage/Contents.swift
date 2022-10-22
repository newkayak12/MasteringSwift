import Foundation
//: [Previous](@previous)


/*:
 # Class
 ![Class](class.png)
 */


class Person {
    var name: String = "Paul";
    var age: Int = 0
    func speak(){
        print("Hello")
    }
}

let p = Person()
p.name
p.age
p.speak()

/**
 |                  | Structure  |        Class       |
 |:----------------:|:----------:|:------------------:|
 |     Property     |      ✓     |         ✓          |
 |     Method       |      ✓     |         ✓          |
 |     Initializer  |      ✓     |         ✓          |
 |     Subscript    |      ✓     |         ✓          |
 |     Extension    |      ✓     |         ✓          |
 |     Protocol     |      ✓     |         ✓          |
 |:----------------:|:----------:|:------------------:|
 |  Type            | Value Type |   Reference Type   |
 |  Deinitizlier    |      x     |          ✓         |
 |  Inherit         |      x     |          ✓         |
 |  Reference       |      x     |          ✓         |
 |  Counting        |            |                    |
 
 */



