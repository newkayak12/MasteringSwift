import UIKit

class MyCell: UITableViewCell {
   
}

class CellRegistrationViewController: UIViewController {
   
   let tableView = UITableView()
   
   override func viewDidLoad() {
      super.viewDidLoad()
       
       tableView.register(MyCell.self, forCellReuseIdentifier: "cell")
       //AnyClass -> MetaType
       //MetaType을 인자로 넘기려면 ~.self
       //클래스에서 사용하는 self와 위 메타타입 리턴 self와는 다른 것
   }
}
