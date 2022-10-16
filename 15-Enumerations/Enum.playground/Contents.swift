import UIKit

/*:
 # Enumerations
 ![enum](enum.png)
 */

let left = 0
let center = 1
let right = 2


var alignment = center//대략적으로 이렇게 정렬한다고 해보자.
//가독성 0점, 컨벤션 유지에 문제가 발생할 가능성이 굉장히 높음


let left2 = "left"
let center2 = "center"
let right2 = "right"

//이렇게 해도 문제가 생김

var alignment2 = left2

if alignment2 == "Left"{
    //이러면 문제가 생김
}

/*:
 ## Syntax
 ![syntax](enum-syntax.png)
 */

enum Alignment {
    case left
    case center
    case right
}

var textAlignment = Alignment.center

if textAlignment == .center{
    
}


















