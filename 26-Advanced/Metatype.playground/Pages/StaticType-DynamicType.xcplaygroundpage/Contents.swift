import UIKit

/*:
 # Metatype
 
 ## Static Type & Dynamic Type
 */

func checkType(of value: Any) { //compile 타임은 Any, Runtime은 String이 된다.
    let typeOfValue: Any.Type = type(of: value)
   //let typeOfValue: Any.Type
   // 기존 타입 뒤에 .Type을 붙이면 메타 타입이 된다.
    
   // 프로토콜이면
//    Equatable.Protocol
/**
    타입이 프로토콜이거나 프로토콜 컴포지션이면 Existentail MetaType
    나머지는 Concrete MetaType
 */
    
   print("\(value) => \(typeOfValue)")
}


//런타임 중 사용하는 타입 -> dynamic
//아래의 name 상수에서의 Type 같은 경우 -> static;
let name = "Jane Doe"
checkType(of: name)

let age = 0
checkType(of: age)


