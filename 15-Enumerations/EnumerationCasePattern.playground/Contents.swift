import UIKit

/*:
 # Enumeration Case Pattern
 ![enum-case](enum-case.png)
 */

enum Transportation {
    case bus(number: Int)
    case taxi(company: String, number: Int)
    case subway(lineNumber: Int, express: Bool)
}
var tpt = Transportation.bus(number: 7)
switch tpt {
    case .bus(let n)://bus case 매칭, n에 연관값 매핑
        print(n)
    case .taxi(let c, let n)://값 바인딩 필요없다면 비우는 것이 아닌 와일드 카드로
        print(c,n)
    case let .subway(l, e): //taxi case보다 효율적
        print(l,e)
}

tpt = Transportation.subway(lineNumber: 2, express: false)
//if문에서 enum pattern
//명시한 조건일 때 if 동작
if case let .subway(2, express) = tpt {
  
    if express {
        
    } else {
        
    }
    
}


if case .subway(_,true) = tpt {
    print("express")
}

let list = [
    Transportation.subway(lineNumber: 2, express: false),
    Transportation.bus(number: 4412),
    Transportation.subway(lineNumber: 7, express: true),
    Transportation.taxi(company: "SeoulTaxi", number: 1234)
]


for case let .subway(n, _) in list {
    print("subway \(n)")
}

for case let .subway(n,true)  in list {
    print("express \(n)")
}

for case let .subway(n,true) in list where n == 2 {
    print("subway \(n)")
}







































