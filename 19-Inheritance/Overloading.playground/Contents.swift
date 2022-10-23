
import UIKit

/*:
 # Overloading
 */

func process(value: Int){
    print(#function," Int")
}
func process(value: String){
    print(#function, " String")
}
func process(value: String, anotherValue: String){
    
}
func process(_ value: String){
    
}
func process(_ value: String) -> String {
    return ""
}

func process(_ value: String) -> Int {
    return 0
}


process(value: 1)
process(value: "Str")
let result1: Int = process("ST")
let result2 = process("ST") as String

/**
overload rule #1
 함수 이름이 동일하면 파라미터 수로 식별

overload rule #2
 이름과 파라미터 수가 같다면 파라미터의 자료형으로 식별
 
overload rule #3
 이름, 파라미터 수, 자료형이 같다면 argumentLabel로 구별

overload rule #4
 이름 파라미터 수, 자료형, argument label이 같다면 return 형으로 구분
 */




struct Rectangle {
    func area() -> Double {
        return 0.0
    }
    static func area() -> Double {
        return 0.0
    }
}

let r = Rectangle()
r.area()
Rectangle.area()
