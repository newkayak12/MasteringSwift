//
//  ViewController.swift
//  HelloSwiftProject
//
//  Created by Sang Hyeon kim on 2022/10/02.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inputField: UITextField!
    //Outlet 입력한 값을 코드로 가져오거나, 코드에서 속성을 바꾸고 싶다면
    //property로
    
    @IBAction func showValue(_ sender: Any) {
//        method로
        let alert = UIAlertController(title: "확인", message: inputField.text, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인", style: .default, handler:  nil)
        alert.addAction(okAction)
        
        present(alert, animated: true, completion: nil);
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

