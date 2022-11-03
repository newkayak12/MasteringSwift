
import UIKit

class GenericFactoryViewController: UIViewController {
   
   override func viewDidLoad() {
      super.viewDidLoad()
       let vc = instantiateViewController(ofType: JSONDecodingViewController.self)
   }
}

extension UIViewController {
    func instantiateViewController<VC: UIViewController>(ofType type: VC.Type) -> VC? {
//        type.init()
        let vcClassName = String(describing: type)
        return storyboard?.instantiateViewController(withIdentifier: vcClassName) as? VC
    }
    
    func duplicateCurrentViewController() -> UIViewController? {
        let vcType = type(of: self)
        return vcType.init()
    }
}
