import UIKit

/*:
 # Multiple Trailing Closure
 */

func multi(first: () -> (), second: () -> (), third: () -> ()) {
   
}

// ~ Swift 5.2
multi(first: { }, second: { }){
    
}
/**
 단점
 1. inline 클로저가 길어지면 가독성이 떨어진다.
 2. trailing 클로저가 어떤 역할을 하는지 한 번에 파악하기 어렵다.
 */



// Swift 5.3 ~
multi {
    print("1")
} second: {
    print("2")
} third: {
    print("3")
}


func multiWildCard(first: () -> (), _ second: () -> (), third: () -> ()) {
   
}
multiWildCard {
    print("1")
} _: {
    print("2")
} third: {
    print("3")
}

//되는데??


UIView.animate(withDuration: 0.3) {
    print("hello")
} completion: {
    print($0)
}


