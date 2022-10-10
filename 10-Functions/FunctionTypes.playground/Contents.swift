import UIKit

/*:
 # Function Types
 ![ftype](ftype.png)
 */

/**
    function type에서 ()는 빈 튜플 -> 없다/ 파라미터가 없다/ 리턴이 없다.
                     void는 리턴이 없다. (== ()) .swift에서는 void를 사용하지 않는다.
 
 */
func sayHello(){
    print("Hello, Swift")
}
let f1 = sayHello
f1()

func printHello(with name: String){
    print("Hello, \(name)")
}
let f2: (String) -> () = printHello(with:)
f2("Swift") //상수에 있는 것을 호출할 떄는 argumentLabel을 작성하지 않는다.

let f3 = printHello(with:)
f3("World")

func add( a: Int, b: Int) -> Int {
    return a + b;
}
var f4: (Int, Int) -> Int = add(a:b:)
f4(1,2)

func add(_ a: Int, with b: Int) -> Int {
    return a + b;
}
f4 = add(_:with:)
f4(1,2)


func swapNumbers(_ a: inout Int, _ b: inout Int) {
    
}
let f5: (inout Int, inout Int) -> () = swapNumbers(_:_:)

func variable(_ a: Int...){
    
}
let f6: (Int...) -> () = variable(_:)





func add(_ a: Int, _ b: Int) -> Int {
    return a + b;
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b;
}

func multiply(_ a: Int, _ b: Int) -> Int {
    return a * b;
}

func divide(_ a: Int, _ b: Int) -> Int {
    return a / b;
}

typealias ArithmeticFunction = (Int, Int) -> Int
func selectFunction(from op: String) -> ArithmeticFunction? {
    switch(op){
        case "+":
            return add(_:_:)
        case "-":
            return subtract(_:_:)
        case "*":
            return multiply(_:_:)
        case "/":
            return divide(_:_:);
        default:
            return nil
    }
}

let af = selectFunction(from: "+")
type(of: af)
af?(1,2)

selectFunction(from: "*")?(12,34)














