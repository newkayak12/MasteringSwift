import UIKit

/*:
 # Subscript Requirements
 ![subscript](subscript.png)
 */

protocol List {
    subscript(idx: Int) -> Int { get } //get은 필수 set은 선택이다.
}

struct DataStore: List {
    subscript(idx: Int) -> Int {
        get {
            return 0
        }
        set {
            //이미 요구 사항을 충족하면 문제삼지 않는다. 요구 사항을 충족하지 못하면 문제가 된다.
        }
    }
}
