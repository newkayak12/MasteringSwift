import UIKit

/*:
 # Parameters
 ![define](define.png)
 ![param](param.png)
 */

func add(left: Int, right: Int) -> Int {
//    left = 12 //constant
    left + right
}

/*:
 ## Calling Functions
 ![call](call.png)
 */

add(left: 1, right: 2)

/*:
 ## Default Value
 ![defval](defval.png)
 */

func sayHello(to: String = "Swift"){
    print("Hello, \(to)")
}

sayHello()
sayHello(to:"Stranger")

/**
 파라미터의 scope : 함수 body
 lifecycle 역시 같다. 함수가 시작되면 파라미터가 만들어지고 함수가 종료되면 삭제된다.
 */
