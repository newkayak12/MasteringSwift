import UIKit

/*:
 # Labeled Statement
 
 ## Syntax
 ![labeled](labeled.png)
 ![usinglabel](usinglabel.png)
 */


/**
    > 레이블이 붙은 문장 && 제어
 문에 레이블을 붙이고 break, continue로 해당 레이블은 제어하는 것
 */


for i in 1 ... 3 {
    print("outer \(i)")
    for j in 1 ... 3 {
        print(" inner \(j)")
        break;
    }
}

// 여기서 바깥을 종료하고 싶다면?

outer: for i in  1 ... 3 {
    print("outer \(i)")
    inner: for j in 1 ... 3 {
        print(" inner \(j)")
        break inner
    }
}














