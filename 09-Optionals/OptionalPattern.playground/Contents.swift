import UIKit

/*:
 # Optional Pattern
 */

let a: Int? = 0 // 단축
let b: Optional<Int> = 0 //원래

//if a == nil {
//
//}
//if a == .none {
//
//}
//if a == 0 {
//
//}
//if a == .some(0){
//
//}
/**
 optinal -> none case/ some case로 구성됨
 */

if let x = a {
   print(x)
}

//enumeration case pattern
if case .some(let x) = a {
   print(x)
}

//enum case pattern의 optional 버전이라고 생각하면 된다.

if case let x? = a {
   print(x)
}


let list: [Int?] = [0, nil, nil, 3, nil, 5]

for item in list {
   guard let x = item else { continue }
   print(x)
}


for case let x? in list {
    //?를 안붙여도 상관은 없으나 x? == optional 이라는 의미에서  x를 eject할 수 있나봄
   print(x)
}



























