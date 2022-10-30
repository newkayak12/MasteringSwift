import Foundation
//: [Previous](@previous)

import Foundation

/*:
 # Weak Reference
 ![weak](weak.png)
 */

/**
        인스턴스를 참조하지만 소유하지 않음, 참조 카운트도 늘지 않음
        소유자에 비해 짧은 생애주기를 갖는 인스턴스에 적용
        항상 옵셔널로 선언, 참조하고 있는 인스턴스 해제되면 자동으로 nil로 초기화 (자바와같음)
    
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
   weak var lessee: Person? //참조하지만 소유하지는 않음
   
   init(model: String) {
      self.model = model
   }
   
   deinit {
      print("car deinit")
   }
}

var person: Person? = Person()
var rentedCar: Car? = Car(model: "Porsche")

person?.car = rentedCar
rentedCar?.lessee = person

person = nil //이러면 참조 카운트가 0이됨 (car에서 weak로 선언했기에) -> 메모리에서 제거 -> 내부 Car에 대한 참조 카운트 소유권 포기  -> CAR 참조 카운트 1 감소
rentedCar = nil

//: [Next](@next)
