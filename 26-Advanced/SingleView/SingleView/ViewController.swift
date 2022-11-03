//
//  ViewController.swift
//  SingleView
//
//  Created by Sang Hyeon kim on 2022/11/03.
//

//:```
//: if #available ( OS Version, OS Version, *) { } else { }
//:
//: while #available ( OS Version, * ) { }
//:
//: guard #available ( OS Version, * ) { } else { return }
//:
//  -> 런타임에 체크, 또한 연산자로 컨디션을 결합할 수 없음 (,로 나열하거나 괄호 안에 OsVersion 나열
//:```
 
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if #available(iOS 11.0, *){
            navigationController?.navigationBar.prefersLargeTitles = true
        } else {
            //Fallback on earlier versions
        }
    }

}

