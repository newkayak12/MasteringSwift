import UIKit

/*:
 # Memberwise Initializer
 */

struct First {
   let a: Int
   let b: Int
   let c: Int
}
let f = First(a: 1, b: 2, c: 3)

struct Second {
   let a: Int = 0
   let b: Int = 1 //선언과 동시에 초기화 했기 때문에
   let c: Int//초기화 되지 않은 C만 초기화 하도록 생성자를 제공함
    //let으로 되어 있기 때문에 c는 초기화 이후 변경 불가
    //추가로 a,b 역시 let이기 때문에 a,b는 생성자로 초기화 불가
}
let s = Second(c: 2)

struct Third {
   var a: Int = 0
   var b: Int = 1
   var c: Int
    
//    init(value: Int){ //initializer 명시하면 새로 구현해야함
//        a = value
//        b = value
//        c = value
//    }
}

extension Third{
    init(value: Int){ //물론 extesion으로 구현하여 memberWise Initializer를 사용할 수 있는 방법이 있기는 함
            a = value
            b = value
            c = value
    }
}

let t = Third(a: 1, b: 2, c: 3)
/**
 구조체는 모든 속성을 초기화하는 생성자를 제공
 파라미터의 수 == 속성의 수
 argument label == 속성의 이름
 기본값을 갖고 있다면 memberwise에서 제외
 속성이 'var'라면 생성자 인자로 모두 제공하기는 함
 */

