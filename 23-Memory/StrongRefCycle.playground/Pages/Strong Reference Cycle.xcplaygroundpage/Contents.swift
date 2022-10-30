import Foundation

/*:
 # Strong Reference Cycle
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
   var lessee: Person?
   
   init(model: String) {
      self.model = model
   }
   
   deinit {
      print("car deinit")
   }
}

var person: Person? = Person() //참조 카운트1
var rentedCar: Car? = Car(model: "Porsche") //참조 카운트1

person?.car = rentedCar //car 참조 카운트 2
rentedCar?.lessee = person //person 참조 카운트 2

person = nil //person 참조 카운트 1 감소, 현재 참조 카윤트 1
rentedCar = nil //car 참조 카운트 1 감소, 현재 참조 카운트 1

person = nil //이래도 car 안의 person을 제거할 수 없음
rentedCar = nil //이래도 person 안의 car 제거할 수 없음
//-> strong reference Cycle 문제



//: [Next](@next)
