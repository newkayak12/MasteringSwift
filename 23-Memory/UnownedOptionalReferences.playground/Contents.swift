import UIKit

/*:
 # Unowned Optional Reference
 ![unowned-optional](unowned-optional.png)
 */

/**
    > swift 5부터는 Unowned도 옵셔널이 가능
 
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
   unowned var lessee: Person?
    //weak와 차이점은?? -> 참조하고 있던 인스턴스가 사라질 때 속성이 업데이트 되는 방식이 다름
    //weak는 nil로 업데이트 해줌
    //unowned는 Crash -> 속성을 업데이트 하지 않음

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
rentedCar?.lessee = nil//로 직접 추가해야함 -> unowned일 경우 이럴거면 굳지 weak를?
rentedCar?.lessee
rentedCar = nil


