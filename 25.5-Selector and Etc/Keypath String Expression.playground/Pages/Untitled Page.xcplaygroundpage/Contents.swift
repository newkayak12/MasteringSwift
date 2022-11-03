import UIKit

//: # KeyPath String Expression

//: ### #keyPath(propertyName)

class Person: NSObject {
    @objc let name: String = "Jane Doe"
    @objc var age: Int = 0;
    //Key - Value
}

let p = Person()
//p.value(forKey: "name")//이렇게 문자열 전달하는 방식 문자열이라 타입체크가 안됨

var keyPath = #keyPath(Person.name)
p.value(forKey: keyPath)
p.value(forKeyPath: keyPath)
//return이 any로 되어 있어서 타입캐스팅을 수반함
//: [Next](@next)
