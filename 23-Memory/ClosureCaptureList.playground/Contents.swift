import UIKit

/*:
 # Closure Capture List
 */
/**
 클로저가 인스턴스를 캡쳐하고 강한 참조로 가지고 있다면 참조 사이클 문제가 생긴다.
 */

class Car {
   var totalDrivingDistance = 0.0
   var totalUsedGas = 0.0
   
   lazy var gasMileage: () -> Double = { [/*weak*/ unowned self] in
       
//      return self.totalDrivingDistance / self.totalUsedGas //self가 캡쳐됨 -> 클로저의 실행이 완료될 때까지 메모리 해제되지 않음
       
       //약한 참조는 Optional
//      guard let strongSelf = self else { return 0.0 }
//      return strongSelf.totalDrivingDistance / strongSelf.totalUsedGas //self가 캡쳐됨 -> 클로저의 실행이 완료될 때까지 메모리 해제되지 않음
      
       return self.totalDrivingDistance / self.totalUsedGas
       
   }
   
   func drive() {
      self.totalDrivingDistance = 1200.0
      self.totalUsedGas = 73.0
   }
   
   deinit {
      print("car deinit")
   }
}

var myCar: Car? = Car()
myCar?.drive()
//myCar = nil//lazy를 호출하지 않아서 deinit됨

myCar?.gasMileage() //클로저 실행하고 instance를 소유함
myCar = nil //클로저가 강한 참조하기에 인스턴스가 정상적으로 소멸되지 않음





/*:
 ![1](1.png)
 ![2](2.png)
 
 ## Value Type
 ![closurecapturelist-valuetype](closurecapturelist-valuetype.png)
 */
/**
 클로저 캡처리스트를 사용하면 in을 생략할 수 없다. 클로저 바디와 구분하기 위해서
 
 */
var a = 0;
var b = 0;
let c = {[a] in print(a, b) } //값을 캡쳐하면 참조가 전달

a = 1 //여기서 바꿨는데 참조가 캡쳐됨 //그러나 캡쳐 리스트로 선언하면 복사하여 가져옴
b = 2
c()



/*:
 ## Reference Type
 ![closurecapturelist](closurecapturelist.png)
 */


//reference 타입이면 weak, unowned 키워드를 넣어야 한다.















