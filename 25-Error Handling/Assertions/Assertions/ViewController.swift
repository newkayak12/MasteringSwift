import UIKit

class ViewController: UIViewController {
   
   @IBOutlet weak var inputField: UITextField!
   
   
   @IBAction func processValue(_ sender: Any) {
      guard let value = inputField.text, let number = Int(value) else {
         return
      }
       
//       if number > 0 {
//
//       } else {
//
//           assertionFailure("negative number or zero not allowed")
//       }
      
      assert(number > 0, "negative number or zero not allowed")
      precondition(number > 0, "negative number or zero not allowed")
       //강제로 종료시켜야 하는 경우,
//      preconditionFailure()//도 있다.project > target > build setting "optimization" -Ounchecked
       fatalError("CRASH!")
       
       
      print(number)
   }
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
   }
}

