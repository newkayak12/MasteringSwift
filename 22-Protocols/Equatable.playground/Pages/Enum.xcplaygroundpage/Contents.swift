
import UIKit

/*:
 # Equatable for Enumerations
 */
/**
  이 프로토콜을 채용하고 있어야
 
    ==, !=으로 비교할 수 있다.
 */



enum Gender {
   case female
   case male
}

Gender.female == Gender.male

struct MySize {
   let width: Double
   let height: Double
}


enum VideoInterface: Equatable {
   case dvi(width: Int, height: Int)
   case hdmi(width: Int, height: Int, version: Double, audioEnabled: Bool)
   case displayPort(size: CGSize)
}

//연관값이라도 Equatable을 채용하고 있다면 자동으로 구현된다.
//만약 다중이라면 Equatable을 채용하면 자동으로 추가된다.

let a = VideoInterface.hdmi(width: 2560, height: 1440, version: 2.0, audioEnabled: true)
let b = VideoInterface.displayPort(size: CGSize(width: 3840, height: 2160))

a == b


//: [Next](@next)
