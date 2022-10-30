import Foundation
//: [Previous](@previous)

import Foundation

/*:
 # Unowned Reference
 ![unowned](unowned.png)
 */

/**
    약한 참조와 유사한 방법이지만 nonOptional임
 인스턴스의 생명주기가 소유자와 같거나 더 길 경우 선언
 옵셔널이 아니기에 참조되고 있는 인스턴스가 해제되어도 nil이 아님 -> 런타임 에러
 */
class Person {
   var name = "John Doe"
   var car: Car?

   deinit {
      print("person deinit")
   }
}

class Car {
   var model: String
   unowned var lessee: Person

   init(model: String, lessee: Person) {
      self.model = model
      self.lessee = lessee
   }

   deinit {
      print("car deinit")
   }
}

var person: Person? = Person()
var rentedCar: Car? = Car(model: "Porsche", lessee: person!)

person?.car = rentedCar

person = nil
rentedCar = nil












