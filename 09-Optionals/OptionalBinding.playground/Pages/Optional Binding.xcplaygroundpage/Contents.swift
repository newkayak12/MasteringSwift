import Foundation

/*:
 # Optional Binding
 */

var num: Int? = nil;
//print(num!)

/*:
 ## Syntax
 ![optional-binding-syntax](optional-binding-syntax.png)
 */


if num != nil {
    print(num!)
} else {
    print("empty")
}

if let num = num {//Optional 바인딩에서는 optional과 같은 변수명으로 선언해도 문제가 되지 않을 수 밖에... scope가 다름
    print(num)//Int
} else {
    print("empty")
}



var str: String? = "str";
guard let str = str else { fatalError() }
str

num = 123
if var num = num {
    num = 1234234
    num
}

let a: Int? = 12
let b: String? = "str"

if let num = a, let str = b, str.count > 5 {
    //모든 바인딩이 성공하면 실행  / 조건도 추가 가능 
    print(num, str)
}











































