
//: [Previous](@previous)

import Foundation

/*:
 # Fall Through
 */

/**
 다른 언어에서
    switch num {
        case 1:
        case 2:
            print("1,2");
        default:
            print("default")
    }
 와 같은 implicit fallThrough를 실행할 수 있게 해주는 것 
 */
let num = 2

switch num {
case 1:
   print("one")
case 2:
   print("two")
   fallthrough
case 3:
   print("three")
default:
   break
}


let attempts = 10

switch attempts {
case ..<10:
   print("warning")
case 10:
   print("warning")
   fallthrough
default:
   print("reset")
}
























