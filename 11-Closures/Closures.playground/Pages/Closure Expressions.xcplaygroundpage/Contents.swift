import UIKit

/*:
 # Closures
 ![closure-expr](closure-expr.png)
 ![closure](closure.png)
 */

/**
 짧은 코드 조각 (self - contained code blocks) : Java에서의 람다.
 함수 == 이름 있는 클로저
 익명함수 == 이름 없는 클로저
 */

let c = { //클로저는 globalScope에 단독으로 사용할 수 없음 // -> parameter, return이 생략된 형태의 클로저
    print("Hello Swift")
}

print(type(of: c))
c()


let c2 = {
//    클로저에서는 arugmentLabel을 사용하지 않는다.
    ( str: String ) -> String in
    return "Hello \(str)"
}
print(type(of: c2))
c2("YJ")


typealias SimpleStringClosure = (String) -> String

func perform(closure: SimpleStringClosure) {
    print(closure("iOS"));
}

perform(closure: c2)
perform(closure: {(str: String) -> String in return "Hi \(str)"})//inline closure


//: [Next](@next)
