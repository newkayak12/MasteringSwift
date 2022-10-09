import UIKit

/*:
 # Return Values
 ![return](return.png)
 */

func add() -> Int {
    return 1 + 2
}
add()

if add() == 3 {
    print("three")
}

func doSomehing(){
    let rnd = Int.random(in: 1...10)
    if rnd % 2 == 1 {
        return
    }
    print(rnd)
}
doSomehing();













