import UIKit

/*:
 # guard
 ## Syntax
 ![guard-syntax](guard-syntax.png)
 */


/**
 Ealry Exit : 원하는 조건이 충족되면 아래의 코드는 실행하지 않고 종료 _ continue??
 guard에서는 else가 없으면 안된다.
 guard 안에서는 실행을 종료시켜야 한다.
 */

func validate(id: String?) -> Bool {
//    guard let id = id  /*optionalBinding..*/ else {
//        return false
//    }
//    guard id.count >= 6 else {
//        return false
//    }
    guard let id = id, id.count >= 6 else { //이렇게도 사용 가능하다.
        return false
    }
    return true;
}

validate(id: nil)
validate(id: "root")
validate(id: "sljflkdksldkj")



//if vs guard
func validIf(){
    var id: String? = nil;
    if let str = id { //optionalBinding
        if str.count >= 6 {
            print(str)
        }
    }
}
func validGuard() {
    var id: String? = nil
    guard let str = id else { return } //guard body must not fall through
    guard str.count >= 6 else { return }
    print(str)
}

validIf()
validGuard()












