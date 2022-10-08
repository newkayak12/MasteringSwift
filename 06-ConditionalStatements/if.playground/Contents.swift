import UIKit

/*:
 # if
 ## Syntax
 ![if](if.png)
 */

var id: String = "root";
var password: String = "1234";

/*:
 ## Syntax
 ![if-else](if-else.png)
 */

if ( id == "root" ) {
    print("valid Id")
}


if ( password == "1234" ) {
    print("validPw")
}

//Condition을 괄호로 안 감싸는 형태로 주로 사용한다고는 한다.
// if키워드와 '{'의 시작을 같은 라인에 두는게 기본 컨벤션

if( (id == "root") && (password == "1234") ) {
    print("login")
}

/*:
 ## Syntax
 ![if-elseif-else](if-elseif-else.png)
 */
id = "root"
password = "14"
if( id == "root" && password == "1234" ){
    print("login")
} else if ( id == "root" && !(password == "1234") ){
    print("invalid pw")
} else if (password == "1234" && !(id == "root") ){
    print("invalid id")
} else {
    print("invalid!")
}


let num: Int = -2
if num >= 0 {
    print("positive number or zero")
} else if num > 0 && num % 2 == 0 {
    print("positive even number")
} else if num > 0 && num % 2 == 1 {
    print("positive odd number")
} else {
    print("negative")
}

if num >= 0 {
    print("positive number or zero")
    if num % 2 == 0 {
        print("positive even number")
    } else if num % 2 == 1 {
        print("positive odd number")
    }
} else {
    print("negative")
}

let num2: Int = 500
if num2 > 0 {
    print("positive")
} else if num > 10 {
    print("> 10")
} else if num > 100 {
    print(" > 100")
}
// positive 만 실행하고 if 블록 나옴 // Java와 같음

if num2 > 100 {
    print(" > 100")
} else if num > 10 {
    print("> 10")
} else if num > 0 {
    print("positive")
}





