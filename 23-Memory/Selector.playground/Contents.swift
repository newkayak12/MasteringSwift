import UIKit
//: # Selector
//: ### #selector(methodName) /
//: ### #selector(getter: propertyName) /
//: ### #selector(setter: propertyName)
/**
 UIKit에서 메소드, getter, setter를 가리키는 인스턴스를 얻는 것,
 코드를 통해 버튼, 메소드를 연결하고 제스쳐 메소드를 연결
 */

/*struct*/class Figure {
   @objc let color: UIColor = .blue
   @objc func draw() { //@objc는 클래스 등에서 사용가능
        print("draw something")
    }
}

let selector = #selector(Figure.draw) //objc에서 사용하던 개념 물론 swift에서도 사용
let colorSelector = #selector(getter: Figure.color)
//#selector(setter: Figure.color) //상수일 경우 setter가 의미 없음

/** 대상을 지칭할 뿐 메소드를 호출하거나 속성에 접근하는 것은 아님. 그저 가리키는 것일 뿐*/
