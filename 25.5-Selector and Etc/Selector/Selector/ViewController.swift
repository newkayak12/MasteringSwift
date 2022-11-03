import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    
   @objc func reset(){
        numberLabel.text = "0"
    }
   @objc func update(_ sender: Any){
        let rnd = Int.random(in: 1...1000)
        numberLabel.text = "\(rnd)"
    }
    lazy var updateBtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Update", for: .normal)
        btn.frame = CGRect(x:0.0, y: self.view.frame.height - 100, width:view.frame.width - 100, height: 60.0)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                                            //타입 추론할 수 있다. 심지어 메소드 이름도 같아서
        updateBtn.addTarget(self, action: #selector(update), for: .touchUpInside)
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Reset", style: .plain, target: self, action: #selector(reset))
    }
}

