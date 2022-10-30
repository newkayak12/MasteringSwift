import UIKit

/*:
 # Explicit Strong Capture
 */

struct PersonValue {
   let name: String = "Jane Doe"
   let age: Int = 0
   
   func doSomething() {
      DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
         print(name, age) //이렇게 Strong Reference 문제가 없다면 self를 제거해도 된다.
      }
      DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
          print(self.name, self.age) //이렇게 Strong Reference 문제가 없다면 self를 제거해도 된다.
      }
      DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [self] in ///이렇게 Explicit으로 하면 한 번만 사용해도 된다.
         print(name, age) //이렇게 Strong Reference 문제가 없다면 self를 제거해도 된다.
      }
   }
}

class PersonObject {
   let name: String = "John Doe"
   let age: Int = 0
   
   func doSomething() {
      DispatchQueue.main.asyncAfter(deadline: .now() + 1) { 
          print(self.name, self.age) // 인스턴스에서는 반드시 명시해야한다.
      }
      DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [self] in
          print(name, age) // 인스턴스에서는 반드시 명시해야한다.
      }
   }
}

