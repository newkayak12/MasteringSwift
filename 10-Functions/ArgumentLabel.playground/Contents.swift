import UIKit

/*:
 # Argument Label
 */

func sayHello(name: String) {
   print("Hello, \(name)")
}

sayHello(name: "Swift")
        //name == argumentLabel

/*:
 ## Syntax
 ![arg1](arg1.png)
 ![arg2](arg2.png)
 */

/**
 argumentLabel을 사용하는 이유는 가독성을 위해서
 */

func sayHello2(name: String) {
   print("Hello, \(name)")
}
sayHello2(name: "Swift")

func sayHello2(to name: String){  //argument label이 있어서 같은 함수가 아니므로 컴파일 에러가 없음
    print("Hello, \(name)") //argument label은 함수를 호출하기 위한 요소
    //print에서는 argumentLabel을 생략한 것
}
sayHello2(to: "Swift")

func sayHello2(_ name: String){
    print("Hello, \(name)")
}
sayHello2("Swift")
/**
 argumentLabel은 전치사 parameterName은 명사로 주로 설정한다.
 */
