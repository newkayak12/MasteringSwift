import UIKit

/*:
 # Nested Types
 ![nested-type](nested-type.png)
 */
class One {
    struct Two{
        enum Three {
            case a
            
            class Four {
                
            }
        }
    }
    
    var a = Two()
}



let two: One.Two = One.Two()
let innerTwo = One().a
let caseA = One.Two.Three.a










