import UIKit

/*:
 # Defining Protocols
 ![define](define.png)
 ![protocol-inheritance](protocol-inheritance.png)
 */
protocol Something {
    func doSomething()
}






/*:
 # Adopting Protocols
 ![adopting](adopting.png)
 */
struct Size: Something {
    func doSomething() {
        print("protocol Method")
    }
}



/*:
 # Class-Only Protocols
 ![class-only](class-only.png)
 */


protocol SomethingObject: AnyObject, Something {
    
}

//struct Value: SomethingObject { //Non-class type 'Value' cannot conform to class protocol 'SomethingObject'
//}

class Object: SomethingObject {
    func doSomething() {
        print("protocol")
    }
}
