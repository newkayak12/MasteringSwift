//: [Previous](@previous)
import Foundation
//: # #keyPath String Expression 2
//: ### \TypeName.propertyName.propertyName

/*
keyPath String Expression                          keyPath RangeExpression
        String                          AnyKeyPaht, PartialKeyPath, KeyPath, WritableKeyPath
                                        ReferenceWritableKeyPath,
    
        클래스 지원                                      클래스 구조체 지원

        NSObject 상속
        @objc 특성 추가                                         -


        컴파일 타임 체크                    컴파일 타임체크, 제네릭 타입 다양한 방식으로 키패스 조합 가능

*/
struct Person {
    let name: String = "Jane Doe"
    var age: Int = 0
}
var p = Person()
let keyPathToName = \Person.name
let keyPathToAge = \Person.age

var nameValue = p[keyPath: keyPathToName] //타입 캐스팅 없이 원래 타입으로
//p[keyPath: keyPathToName] = "John Doe" //읽기 전용이라 바꿀 수 없다.
p[keyPath: keyPathToAge] = 200 //Writable이라 가능하다. 인스턴스가 변수에 저장되어 있다면



//: # KeyPath Type
//: ```swift
//: class AnyKeyPath
//: class PartialKeyPath<Root>: AnyKeyPath
//: class KeyPath<Root, Value>: PartialKeyPath<Root>
//: class WritableKeyPath<Root, Value>: KeyPath<Root,Value> -> 구조체와 같은 값 형식에서만 사용한다.
//: class ReferenceWritableKeyPath<Root, Value>: WritableKeyPath<Root, Value>
//: ```
var keyPathToLength = \Person.name.count
p[keyPath: keyPathToLength]
keyPathToLength = keyPathToName.appending(path: \String.count)
