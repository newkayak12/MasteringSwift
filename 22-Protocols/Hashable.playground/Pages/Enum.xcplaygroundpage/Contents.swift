
import UIKit

/*:
 # Hashable for Enumerations
 */

enum ServiceType {
   case onlineCourse
   case offlineCamp
}

let types: [ServiceType: String]
let typeSet: Set = [ServiceType.onlineCourse]


enum VideoInterface: Hashable { //Type 'VideoInterface' does not conform to protocol 'Hashable'
   case dvi(width: Int, height: Int)
   case hdmi(width: Int, height: Int, version: Double, audioEnabled: Bool)
//   case displayPort(size: CGSize)
}

let interfaces: [VideoInterface: String] //Type 'VideoInterface' does not conform to protocol 'Hashable'
let interfaceSet: Set = [VideoInterface.dvi(width: 1027, height: 768)] //Generic struct 'Set' requires that 'VideoInterface' conform to 'Hashable'

//: [Next](@next)
