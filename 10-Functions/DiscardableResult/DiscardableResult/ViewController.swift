import UIKit


func doSomething() {
   print("Something secret")
}

func saySomething() -> String {
   return "Hello"
}

@discardableResult // 이 경우는 return 하는 것이 없어서 경고가 뜬다.
                   // 의미가 없기 때문이다.
func discardableDoSomething() {
   print("Something secret")
}

@discardableResult
func discardableSaySomething() -> String {
    return "Hello"
}

class ViewController: UIViewController {
      
   override func viewDidLoad() {
      super.viewDidLoad()
      
      doSomething()

      saySomething() //여기에서 함수 리턴을 사용하지 않는다는 경고 메시지를 무시할 수 있는 어노테이션이
                    //@discarableResult이다.
       
      discardableSaySomething();
       
       _ = saySomething()//혹은 구현이 이미 돼 있어서 수정할 수 없다면 와일드카드로 받아버리면 그만이다.
   }
}

