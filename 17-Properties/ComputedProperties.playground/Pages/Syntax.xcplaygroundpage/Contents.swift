import UIKit

/*:
 # Computed Properties
 ![computed](computed.png)
 */


class Person {
    var name: String
    var yearOfBirth: Int
    var age: Int {
        get {
            let calendar = Calendar.current
            let now = Date()
            let year = calendar.component(.year, from: now)
            return year - yearOfBirth
        }
//        이렇게 set이 없으면 읽기 전용이 된다.
//        set {
//            let calendar = Calendar.current
//            let now = Date()
//            let year = calendar.component(.year, from: now)
//            yearOfBirth = year - newValue//age라는 속성으로 들어오면 set블록에서는 newValue로 사용할 수 있다.
//        }
    }

    init(name: String, year: Int) {
      self.name = name
      self.yearOfBirth = year
    }
}


let p = Person(name: "John Doe", year: 2002)
p.age

//p.age = 50
p.yearOfBirth









/*:
 ## Read-only Computed Properties
 ![readonly-1](readonly-1.png)
 ![readonly-2](readonly-2.png)
 */



class Person2 {
    var name: String
    var yearOfBirth: Int
//    var age: Int = { //이러면 클로저를 저장하는 거겠죠
    var age: Int {
            let calendar = Calendar.current
            let now = Date()
            let year = calendar.component(.year, from: now)
            return year - yearOfBirth
        }
//        이렇게 set이 없으면 읽기 전용이 된다.
//          get없이 set만 있는 경우는 없다.

    init(name: String, year: Int) {
      self.name = name
      self.yearOfBirth = year
    }
}










